view: worldcup_players {
  sql_table_name: public.Worldcup_players ;;

  dimension: coach_name {
    type: string
    sql: ${TABLE}."Coach Name" ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}."Event" ;;
  }

  dimension: lineup {
    type: string
    sql: ${TABLE}."Line-up" ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}."MatchID" ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}."Player Name" ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}."Position" ;;
  }

  dimension: round_id {
    type: string
    sql: ${TABLE}."RoundID" ;;
  }

  dimension: shirt_number {
    type: string
    sql: ${TABLE}."Shirt Number" ;;
  }

  dimension: team_initials {
    type: string
    sql: ${TABLE}."Team Initials" ;;
  }

  measure: count {
    type: count
    drill_fields: [coach_name, player_name]
  }
}
