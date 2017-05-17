view: debates {
  sql_table_name: campaign_funding.debates ;;

  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
  }

  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: geography {
    type: string
    sql: ${TABLE}.geography ;;
  }

  dimension: income_range {
    type: string
    sql: ${TABLE}.income_range ;;
  }

  dimension: parental_status {
    type: string
    sql: ${TABLE}.parental_status ;;
  }

  dimension: publisher_category {
    type: string
    sql: ${TABLE}.publisher_category ;;
  }

  dimension: response_time {
    type: string
    sql: ${TABLE}.response_time ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time ;;
  }

  dimension: urban_density {
    type: string
    sql: ${TABLE}.urban_density ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
