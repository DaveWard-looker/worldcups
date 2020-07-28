view: worldcups {
  sql_table_name: public.worldcups ;;

  dimension: attendance {
    hidden: yes
    type: string
    sql: replace(${TABLE}."Attendance",'.','') ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}."GoalsScored" ;;
  }

  dimension: matches_played {
    hidden: yes
    type: string
    sql: ${TABLE}."MatchesPlayed" ;;
  }

  dimension: qualified_teams {
    hidden: yes
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
    primary_key: yes
    type: number
    sql: ${TABLE}."Year" ;;
    value_format_name: decimal_0
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure:  total_goals_scored{
    group_label: "Goals Scored"
    type: sum
    sql: cast(${goals_scored} as decimal) ;;

  }
  measure:  average_goals_scored{
    group_label: "Goals Scored"
    type: average
    sql: cast(${goals_scored} as decimal) ;;
    value_format_name: decimal_0
  }

  measure: max_goals_scored  {
    group_label: "Goals Scored"
    type: max
    sql: cast(${goals_scored} as decimal) ;;
  }

  measure: min_goals_scored  {
    group_label: "Goals Scored"
    type: min
    sql: cast(${goals_scored} as decimal) ;;
  }

  measure: percent_goals_scored  {
    group_label: "Goals Scored"
    type: percent_of_total
    sql: cast(${goals_scored} as decimal) ;;
  }

  measure:  total_attendence{
    group_label: "Attendence"
    type: sum
    sql: cast(${attendance} as decimal) ;;
    value_format_name: decimal_0
  }
  measure:  average_attendence{
    group_label: "Attendence"
    type: average
    sql: cast(${attendance} as decimal) ;;
    value_format_name: decimal_0
  }

  measure: max__attendence {
    group_label: "Attendence"
    type: max
    sql: cast(${attendance} as decimal);;
  }

  measure: min__attendence  {
    group_label: "Attendence"
    type: min
    sql: cast(${attendance} as decimal);;
  }

  measure: percent__attendence {
    group_label: "Attendence"
    type: percent_of_total
    sql: cast(${attendance}  as decimal);;
  }

  measure: total_matches_played {
    type: sum
    sql: cast(${matches_played}  as decimal);;
  }

  measure: total_qualified_teams {
    type: sum
    sql: cast(${qualified_teams}  as decimal);;
  }

}
