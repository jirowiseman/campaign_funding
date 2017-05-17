view: summary_copy {
  sql_table_name: campaign_funding.summary_copy ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: candidate {
    type: string
    sql: ${TABLE}.candidate ;;
  }

  dimension: candidate_affiliation {
    type: string
    sql: ${TABLE}.candidate_affiliation ;;
  }

  dimension: candidate_district {
    type: string
    sql: ${TABLE}.candidate_district ;;
  }

  dimension: candidate_ici {
    type: string
    sql: ${TABLE}.candidate_ici ;;
  }

  dimension: candidate_office {
    type: string
    sql: ${TABLE}.candidate_office ;;
  }

  dimension: candidate_state {
    type: string
    sql: ${TABLE}.candidate_state ;;
  }

  dimension: candidate_status {
    type: string
    sql: ${TABLE}.candidate_status ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: committee_affiliation {
    type: string
    sql: ${TABLE}.committee_affiliation ;;
  }

  dimension: committee_designation {
    type: string
    sql: ${TABLE}.committee_designation ;;
  }

  dimension: committee_name {
    type: string
    sql: ${TABLE}.committee_name ;;
  }

  dimension: committee_organization_name {
    type: string
    sql: ${TABLE}.committee_organization_name ;;
  }

  dimension: committee_organization_type {
    type: string
    sql: ${TABLE}.committee_organization_type ;;
  }

  dimension: committee_type {
    type: string
    sql: ${TABLE}.committee_type ;;
  }

  dimension: election_year {
    type: number
    sql: ${TABLE}.election_year ;;
  }

  dimension: employer {
    type: string
    sql: ${TABLE}.employer ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.entity_type ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension_group: transaction {
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
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: zip_code {
    type: string
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [committee_name, committee_organization_name, name]
  }
}
