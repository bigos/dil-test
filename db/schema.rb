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

ActiveRecord::Schema.define(version: 20180214154447) do

  create_table "b_owners_d_agencies", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "brand_owner_id"
    t.integer "design_agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_owner_id", "design_agency_id"], name: "index_b_owners_d_agencies_on_brand_owner_id_and_design_agency_id", unique: true
  end

  create_table "brand_owners", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.string "logo_uid"
    t.string "logo_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "client", default: true, null: false
    t.boolean "toggl"
    t.string "prez_intro_image_uid"
    t.string "prez_intro_image_name"
    t.boolean "archive", default: false
    t.text "users_list"
    t.index ["name"], name: "index_clients_on_name", unique: true
  end

  create_table "brand_owners_custom_reports", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "custom_report_id"
    t.integer "brand_owner_id"
  end

  create_table "brands", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand_owner_id"
    t.text "description"
    t.index ["brand_owner_id"], name: "index_brands_on_brand_owner_id"
    t.index ["name"], name: "index_brands_on_name", unique: true
  end

  create_table "campaigns", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "brand_owner_id"
    t.string "name"
    t.boolean "archived", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "completed_job_reports", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "project_id"
    t.boolean "goal_new_cdm_location", default: false, null: false
    t.boolean "goal_first_cdm_project", default: false, null: false
    t.boolean "goal_worldwide_rollout", default: false, null: false
    t.boolean "goal_regional_rollout", default: false, null: false
    t.boolean "goal_new_product_launch", default: false, null: false
    t.boolean "goal_product_relaunch", default: false, null: false
    t.boolean "goal_rebranding", default: false, null: false
    t.boolean "goal_event_related", default: false, null: false
    t.boolean "goal_market_share", default: false, null: false
    t.boolean "goal_emerging_market", default: false, null: false
    t.boolean "goal_unit_relocation", default: false, null: false
    t.boolean "goal_repair_maintenance", default: false, null: false
    t.boolean "goal_other", default: false, null: false
    t.string "main_rollout_sites"
    t.string "new_brand_aspects"
    t.text "highlights"
    t.text "improvements"
    t.string "mfg_location"
    t.text "special_considerations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "goal_regional_rollout_description"
    t.string "goal_new_product_launch_description"
    t.string "goal_prodict_relaunch_description"
    t.string "goal_rebranding_description"
    t.string "goal_event_related_description"
    t.string "goal_market_share_description"
    t.string "goal_emerging_market_description"
    t.string "goal_unit_relocation_description"
    t.string "goal_repair_maintenance_description"
    t.string "goal_other_description"
    t.string "completed_project_photo_uid"
    t.string "completed_project_photo_name"
    t.index ["project_id"], name: "index_completed_job_reports_on_project_id"
  end

  create_table "custom_report_users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "custom_report_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["custom_report_id"], name: "index_custom_report_users_on_custom_report_id"
    t.index ["user_id"], name: "index_custom_report_users_on_user_id"
  end

  create_table "custom_reports", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "link"
    t.string "title", default: "", null: false
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "report_type"
    t.string "fields"
    t.date "last_visited"
    t.integer "created_by_id"
  end

  create_table "design_agencies", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "country"
    t.string "contact_first_name"
    t.string "contact_last_name"
    t.string "contact_phone_number"
    t.string "contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "df_retailers", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_df_retailers_on_name"
  end

  create_table "duty_free_locations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location_type", default: "Airport", null: false
    t.string "code", default: "", null: false
    t.string "city", default: "", null: false
    t.string "country", default: "", null: false
    t.string "region"
    t.index ["location_type"], name: "index_duty_free_locations_on_location_type"
    t.index ["name"], name: "index_airports_on_name", unique: true
    t.index ["region"], name: "index_duty_free_locations_on_region"
  end

  create_table "filters", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "job_number"
    t.integer "job_number_exact"
    t.string "name"
    t.string "status"
    t.string "in_finance"
    t.string "completed"
    t.string "brand_owner_id_filter"
    t.string "brand_owner_client"
    t.string "client_id"
    t.string "brand_id"
    t.string "project_campaigns_campaign_id"
    t.string "df_retailer_id"
    t.string "region"
    t.string "duty_free_location_location_type"
    t.string "duty_free_location_id"
    t.string "project_status_contain"
    t.string "targetstall_date"
    t.string "billing_office"
    t.string "account_director_id"
    t.string "client_project_manager_id"
    t.string "internal_project_manager_id"
    t.string "project_engineer_id"
    t.string "artwork_id"
    t.string "design_id"
    t.string "costings_id"
    t.string "supplier_id"
    t.string "account_manager_id"
    t.string "procurement_manager_id"
    t.string "design_agency_id"
    t.string "next_steps"
    t.string "project_type"
    t.string "po_number"
    t.string "testimonial2"
    t.string "po_date"
    t.string "target_three_d_approval_date"
    t.string "install_date"
    t.string "remove_date"
    t.string "warranty_end_date"
    t.string "three_d_completion_date"
    t.string "ce_date"
    t.string "aw_date"
    t.string "live_date"
    t.string "brand_owner_next_steps"
    t.string "create_at_filter"
    t.string "in_trouble"
    t.string "from_admin_side"
    t.string "from_client_side"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finance_documents", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "document_type", default: "", null: false
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "document"
  end

  create_table "images", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "imageable_id"
    t.string "imageable_type"
    t.integer "position"
    t.string "image_name"
    t.string "image_uid"
    t.text "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "image_rotation", default: 0
    t.boolean "visible", default: true
    t.index ["imageable_id"], name: "index_images_on_imageable_id"
  end

  create_table "main_images", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "main_imageable_id"
    t.string "main_imageable_type"
    t.integer "position"
    t.string "image_name", null: false
    t.string "image_uid", null: false
    t.text "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "visible", default: true
    t.index ["main_imageable_id", "main_imageable_type"], name: "index_main_images_on_main_imageable_id_and_main_imageable_type"
  end

  create_table "project_campaigns", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "project_id"
    t.integer "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "brand_id"
    t.string "name"
    t.string "region"
    t.string "terminal"
    t.string "status"
    t.string "shop_name"
    t.date "install_date"
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "floor_plan_uid"
    t.string "floor_plan_name"
    t.string "airside_landside"
    t.integer "df_retailer_id"
    t.string "video_id"
    t.string "video_thumbnail_uid"
    t.string "video_thumbnail_name"
    t.string "job_number", null: false
    t.string "supplier_name", default: "", null: false
    t.text "comments", null: false
    t.text "next_steps", null: false
    t.date "ce_date"
    t.text "brand_owner_comments", null: false
    t.text "brand_owner_next_steps", null: false
    t.string "project_status", default: "", null: false
    t.boolean "snagging", default: false, null: false
    t.date "three_d_completion_date"
    t.string "design_intent_name"
    t.string "design_intent_uid"
    t.integer "p2_brand_id"
    t.integer "support_brand_id"
    t.string "fi", default: "Not Required", null: false
    t.integer "account_manager_id"
    t.integer "procurement_manager_id"
    t.boolean "paid", default: false, null: false
    t.integer "design_agency_id"
    t.integer "duty_free_location_id"
    t.integer "units_count", default: 0
    t.date "target_install_date"
    t.string "po_number"
    t.boolean "toggl", default: true, null: false
    t.integer "internal_project_manager_id"
    t.integer "project_engineer_id"
    t.text "description"
    t.string "ss", default: "Required", null: false
    t.string "three_d", default: "Required", null: false
    t.string "dd", default: "Required", null: false
    t.string "ce", default: "Required", null: false
    t.string "td", default: "Required", null: false
    t.string "po", default: "Required", null: false
    t.string "qc", default: "Required", null: false
    t.string "ir", default: "Required", null: false
    t.string "gr", default: "Required", null: false
    t.string "inv", default: "Required", null: false
    t.date "warranty_end_date"
    t.date "remove_date"
    t.boolean "brand_owner_client", default: true
    t.integer "client_id"
    t.string "project_type"
    t.boolean "goal_new_cdm_location", default: false, null: false
    t.boolean "goal_first_cdm_project", default: false, null: false
    t.boolean "goal_worldwide_rollout", default: false, null: false
    t.boolean "goal_regional_rollout", default: false, null: false
    t.boolean "goal_new_product_launch", default: false, null: false
    t.boolean "goal_product_relaunch", default: false, null: false
    t.boolean "goal_rebranding", default: false, null: false
    t.boolean "goal_event_related", default: false, null: false
    t.boolean "goal_market_share", default: false, null: false
    t.boolean "goal_emerging_market", default: false, null: false
    t.boolean "goal_unit_relocation", default: false, null: false
    t.boolean "goal_repair_maintenance", default: false, null: false
    t.boolean "goal_other", default: false, null: false
    t.string "goal_regional_rollout_description"
    t.string "goal_new_product_launch_description"
    t.string "goal_rebranding_description"
    t.string "goal_event_related_description"
    t.string "goal_market_share_description"
    t.string "goal_emerging_market_description"
    t.string "goal_unit_relocation_description"
    t.string "goal_repair_maintenance_description"
    t.string "goal_other_description"
    t.string "currency"
    t.decimal "ce_val", precision: 10
    t.decimal "cdm_cost", precision: 10
    t.string "aw", default: "Required", null: false
    t.integer "account_director_id"
    t.integer "client_project_manager_id"
    t.integer "artwork_id"
    t.integer "design_id"
    t.integer "costings_id"
    t.integer "supplier_id", default: 0
    t.boolean "in_finance", default: false, null: false
    t.string "before_photo_uid"
    t.string "before_photo_name"
    t.boolean "replacement"
    t.integer "instore_project_id"
    t.decimal "po_val", precision: 10
    t.decimal "po_ce_val", precision: 10
    t.datetime "po_date"
    t.boolean "cdm_handle_removals"
    t.datetime "old_target_install_date"
    t.string "brief", default: "Required", null: false
    t.datetime "old_three_d_completion_date"
    t.integer "tracking_units_count"
    t.string "goal_product_relaunch_description"
    t.text "finance_comments"
    t.string "billing_office"
    t.string "installation_sign_off_photo_uid"
    t.string "installation_sign_off_photo_name"
    t.string "location_type"
    t.datetime "aw_date"
    t.string "aw_status"
    t.decimal "client_budget", precision: 10
    t.decimal "budget_savings", precision: 10
    t.boolean "completed"
    t.date "target_three_d_approval_date"
    t.string "selected_3d_version"
    t.date "client_brief_date"
    t.integer "brand_owner_id"
    t.date "live_date"
    t.text "testimonial"
    t.text "comments_from_client"
    t.string "start_production", default: "Required"
    t.datetime "target_start_production_date"
    t.datetime "actual_start_production_date"
    t.date "invoice_date"
    t.index ["account_director_id"], name: "index_projects_on_account_director_id"
    t.index ["account_manager_id"], name: "index_projects_on_account_manager_id"
    t.index ["artwork_id"], name: "index_projects_on_artwork_id"
    t.index ["brand_id"], name: "index_projects_on_brand_id"
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["client_project_manager_id"], name: "index_projects_on_client_project_manager_id"
    t.index ["costings_id"], name: "index_projects_on_costings_id"
    t.index ["design_agency_id"], name: "index_projects_on_design_agency_id"
    t.index ["design_id"], name: "index_projects_on_design_id"
    t.index ["df_retailer_id"], name: "index_projects_on_df_retailer_id"
    t.index ["duty_free_location_id"], name: "index_projects_on_duty_free_location_id"
    t.index ["internal_project_manager_id"], name: "index_projects_on_internal_project_manager_id"
    t.index ["job_number"], name: "index_projects_on_job_number"
    t.index ["name"], name: "index_projects_on_name"
    t.index ["procurement_manager_id"], name: "index_projects_on_procurement_manager_id"
    t.index ["project_engineer_id"], name: "index_projects_on_project_engineer_id"
  end

  create_table "projects_tracking_units", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "project_id"
    t.integer "tracking_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "date_conflict", default: false
    t.index ["project_id"], name: "index_projects_tracking_units_on_project_id"
    t.index ["tracking_unit_id"], name: "index_projects_tracking_units_on_tracking_unit_id"
  end

  create_table "ratings", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "supplier_id"
    t.integer "user_id"
    t.integer "costs"
    t.integer "english_proficiency"
    t.integer "deadline_adherence"
    t.integer "quality_durability"
    t.integer "relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "comments"
    t.string "project_job_number"
  end

  create_table "scheduler_dates", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "project_tu_junction_id"
    t.date "from"
    t.date "to"
    t.decimal "currency", precision: 10
    t.integer "days"
    t.string "location"
    t.index ["days"], name: "index_scheduler_dates_on_days"
    t.index ["from"], name: "index_scheduler_dates_on_from"
    t.index ["project_tu_junction_id"], name: "index_scheduler_dates_on_project_tu_junction_id"
    t.index ["to"], name: "index_scheduler_dates_on_to"
  end

  create_table "supplier_brand_owners", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "supplier_id"
    t.integer "brand_owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplier_contacts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "supplier_id"
    t.string "first_name"
    t.string "last_name"
    t.string "position", default: "", null: false
    t.string "email"
    t.string "mobile_phone"
    t.string "skype"
    t.string "local_address_line_1"
    t.string "local_address_line_2"
    t.string "local_city"
    t.string "local_region"
    t.string "local_country"
    t.string "local_zip_code"
    t.boolean "inactive"
    t.boolean "different_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "title"
  end

  create_table "supplier_documents", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "user_id"
    t.string "name"
    t.string "document"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "main_telephone"
    t.string "website"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "zipcode"
    t.boolean "cdm_approved_supplier"
    t.integer "overall_rating", default: 0
    t.string "principal_regions"
    t.integer "payment_terms"
    t.string "deposit"
    t.string "warranty_period"
    t.string "nda_uid"
    t.string "nda_name"
    t.string "contract_and_terms_uid"
    t.string "contract_and_terms_name"
    t.string "suitable_project_types"
    t.string "three_d_cad"
    t.string "adhesive_and_tapes"
    t.string "assembly"
    t.string "crates"
    t.string "design"
    t.string "electrics"
    t.string "engineering"
    t.string "fixtures_and_fittings"
    t.string "local_servicing"
    t.string "lighting"
    t.string "metal"
    t.string "painting"
    t.string "plastic_fabrication"
    t.string "print"
    t.string "wood"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "fax_number"
    t.string "three_d_print"
    t.string "aluminium_extrusion"
    t.string "artwork"
    t.string "injection_moulding"
    t.string "installation"
    t.string "plastic_extrusion"
    t.string "vacuum_forming"
    t.string "other_warranty_period"
    t.text "supplier_description"
    t.string "services"
    t.integer "current_cdm_projects"
    t.integer "all_cdm_projects"
    t.integer "user_id"
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
    t.string "cdm_last_updated"
    t.string "county_state_province"
    t.datetime "last_approval_request"
    t.integer "last_approval_request_sent_by_id"
    t.string "location"
    t.string "warehousing"
  end

  create_table "taggings", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "tag_id"
    t.integer "taggable_id"
    t.string "taggable_type"
    t.integer "tagger_id"
    t.string "tagger_type"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  end

  create_table "tags", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", collation: "utf8_bin"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "three_d_kpi_reports", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "project_id"
    t.date "first_3d_submission"
    t.integer "count_3d_versions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracking_units", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "unit_type"
    t.string "asset_id"
    t.text "unit_description"
    t.float "unit_height", limit: 24
    t.float "unit_width", limit: 24
    t.float "unit_depth", limit: 24
    t.string "asset_sticker_id"
    t.string "asset_sticker_image_name"
    t.string "asset_sticker_image_uid"
    t.string "barcode_name"
    t.string "barcode_uid"
    t.float "unit_value", limit: 24
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "main_image_uid"
    t.string "main_image_name"
    t.integer "brand_id"
    t.float "weight", limit: 24
    t.text "unit_type_description"
    t.integer "conditions"
    t.text "repair_description"
    t.decimal "pallet", precision: 5, scale: 2
    t.string "removal_method"
    t.integer "days_warehoused"
    t.integer "days_in_store"
    t.integer "booking_sum"
    t.integer "future_booking"
    t.boolean "date_conflict", default: false
    t.datetime "main_image_date"
    t.string "current_duty_free_location"
    t.string "removal_comments"
    t.date "last_date_used"
    t.integer "main_image_chosen_id"
    t.index ["asset_sticker_image_uid"], name: "index_tracking_units_on_asset_sticker_image_uid"
    t.index ["barcode_uid"], name: "index_tracking_units_on_barcode_uid"
    t.index ["brand_id"], name: "index_tracking_units_on_brand_id"
    t.index ["conditions"], name: "index_tracking_units_on_conditions"
    t.index ["main_image_uid"], name: "index_tracking_units_on_main_image_uid"
    t.index ["pallet"], name: "index_tracking_units_on_pallet"
    t.index ["project_id"], name: "index_tracking_units_on_project_id"
    t.index ["unit_depth"], name: "index_tracking_units_on_unit_depth"
    t.index ["unit_height"], name: "index_tracking_units_on_unit_height"
    t.index ["unit_type"], name: "index_tracking_units_on_unit_type"
    t.index ["unit_value"], name: "index_tracking_units_on_unit_value"
    t.index ["unit_width"], name: "index_tracking_units_on_unit_width"
  end

  create_table "user_brand_owners", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "user_id"
    t.integer "brand_owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_owner_id"], name: "index_user_clients_on_client_id"
    t.index ["user_id", "brand_owner_id"], name: "index_user_clients_on_user_id_and_client_id"
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "client", null: false
    t.string "name", default: "", null: false
    t.string "position", default: "", null: false
    t.string "nickname"
    t.string "company_name"
    t.boolean "tooltips", default: false, null: false
    t.boolean "inactive"
    t.text "brand_owner_list"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", collation: "utf8_general_ci"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  create_table "zones", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "project_id"
    t.string "zone"
    t.string "df_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
