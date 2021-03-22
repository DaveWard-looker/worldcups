connection: "heroku-pg-bronze"

# include all the views
include: "/views/**/*.view"

datagroup: kaggle_postgres_datasets_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kaggle_postgres_datasets_default_datagroup

explore: worldcups {}

# explore: covid_containment_measures {}

# explore: covid_mobility {}

# explore: covid_us_counties {}

# explore: worldcup_matches {}

# explore: worldcup_players {}

