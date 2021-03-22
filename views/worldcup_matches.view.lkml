view: worldcup_matches {
  sql_table_name: public.worldcup_matches ;;

  dimension: assistant_1 {
    type: string
    sql: ${TABLE}."Assistant 1" ;;
  }

  dimension: assistant_2 {
    type: string
    sql: ${TABLE}."Assistant 2" ;;
  }

  dimension: attendance {
    type: string
    sql: ${TABLE}."Attendance" ;;
  }

  dimension: away_team_goals {
    type: string
    sql: ${TABLE}."Away Team Goals" ;;
  }

  dimension: away_team_initials {
    type: string
    sql: ${TABLE}."Away Team Initials" ;;
  }

  dimension: away_team_name {
    type: string
    sql: ${TABLE}."Away Team Name" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."City" ;;
  }

  dimension: datetime {
    type: string
    sql: ${TABLE}."Datetime" ;;
  }

  dimension: halftime_away_goals {
    type: string
    sql: ${TABLE}."Half-time Away Goals" ;;
  }

  dimension: halftime_home_goals {
    type: string
    sql: ${TABLE}."Half-time Home Goals" ;;
  }

  dimension: home_team_goals {
    type: string
    sql: ${TABLE}."Home Team Goals" ;;
  }

  dimension: home_team_initials {
    type: string
    sql: ${TABLE}."Home Team Initials" ;;
  }

  dimension: home_team_name {
    type: string
    sql: ${TABLE}."Home Team Name" ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}."MatchID" ;;
  }

  dimension: referee {
    type: string
    sql: ${TABLE}."Referee" ;;
  }

  dimension: round_id {
    type: string
    sql: ${TABLE}."RoundID" ;;
  }

  dimension: stadium {
    type: string
    sql: ${TABLE}."Stadium" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."Stage" ;;
  }

  dimension: win_conditions {
    type: string
    sql: ${TABLE}."Win conditions" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."Year" ;;
  }

  measure: count {
    type: count
    drill_fields: [home_team_name, away_team_name]
  }
}
