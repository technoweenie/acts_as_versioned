require 'abstract_unit'

if ActiveRecord::Base.connection.supports_migrations? 
  class Thing < ActiveRecord::Base
    attr_accessor :version
    acts_as_versioned
  end

  class MigrationTest < Test::Unit::TestCase
    def setup
    end

    def teardown
      ActiveRecord::Base.connection.initialize_schema_information
      ActiveRecord::Base.connection.update "UPDATE schema_info SET version = 0"

      Thing.connection.drop_table "things" rescue nil
      Thing.connection.drop_table "thing_versions" rescue nil
      Thing.reset_column_information
    end
        
    def test_versioned_migration
      assert_raises(ActiveRecord::StatementInvalid) { Thing.create :title => 'blah blah' }
      ActiveRecord::Migrator.up(File.dirname(__FILE__) + '/fixtures/migrations/')
      t = Thing.create :title => 'blah blah'
      assert_equal 1, t.versions.size
    end
  end
end
