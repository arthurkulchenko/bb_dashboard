# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_190_404_131_148) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'employees', force: :cascade do |t|
    t.string 'full_name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'employees_roles', id: false, force: :cascade do |t|
    t.bigint 'employee_id'
    t.bigint 'role_id'
    t.index %w[employee_id role_id], name: 'index_employees_roles_on_employee_id_and_role_id'
    t.index ['employee_id'], name: 'index_employees_roles_on_employee_id'
    t.index ['role_id'], name: 'index_employees_roles_on_role_id'
  end

  create_table 'occupations', force: :cascade do |t|
    t.bigint 'employee_id'
    t.string 'reason', null: false
    t.datetime 'from', null: false
    t.datetime 'to', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_occupations_on_employee_id'
  end

  create_table 'profiles', force: :cascade do |t|
    t.bigint 'employee_id'
    t.string 'position'
    t.string 'birthday'
    t.string 'contacts'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_profiles_on_employee_id'
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.string 'resource_type'
    t.bigint 'resource_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[name resource_type resource_id], name: 'index_roles_on_name_and_resource_type_and_resource_id'
    t.index %w[resource_type resource_id], name: 'index_roles_on_resource_type_and_resource_id'
  end

  create_table 'root_users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_root_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_root_users_on_reset_password_token', unique: true
  end

  create_table 'versions', force: :cascade do |t|
    t.string 'item_type', null: false
    t.integer 'item_id', null: false
    t.string 'event', null: false
    t.string 'whodunnit'
    t.text 'object'
    t.datetime 'created_at'
    t.index %w[item_type item_id], name: 'index_versions_on_item_type_and_item_id'
  end

  add_foreign_key 'occupations', 'employees'
  add_foreign_key 'profiles', 'employees'
end
