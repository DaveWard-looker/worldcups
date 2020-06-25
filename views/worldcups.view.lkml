view: worldcups {
  sql_table_name: public.worldcups ;;

  dimension: attendance {
    type: string
    sql: ${TABLE}."Attendance" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
  }

  dimension: fourth {
    type: string
    sql: ${TABLE}."Fourth" ;;
  }

  dimension: goals_scored {
    type: string
    sql: ${TABLE}."GoalsScored" ;;
  }

  dimension: matches_played {
    type: string
    sql: ${TABLE}."MatchesPlayed" ;;
  }

  dimension: qualified_teams {
    type: string
    sql: ${TABLE}."QualifiedTeams" ;;
  }

  dimension: runnersup {
    type: string
    sql: ${TABLE}."Runners-Up" ;;
  }

  dimension: third {
    type: string
    sql: ${TABLE}."Third" ;;
  }

  dimension: winner {
    type: string
    sql: ${TABLE}."Winner" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."Year" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
