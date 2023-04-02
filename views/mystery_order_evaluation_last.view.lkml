view: mystery_order_evaluation_last {
  sql_table_name: "WORKSPACE_233686783"."mystery_order_evaluation_last"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: admin_approved {
    type: string
    sql: ${TABLE}."Admin approved" ;;
  }

  dimension: admin_note {
    type: string
    sql: ${TABLE}."Admin note" ;;
  }

  dimension: avg_exc_temp {
    type: number
    sql: ${TABLE}."Avg exc temp" ;;
  }

  dimension: avg_temp {
    type: number
    sql: ${TABLE}."Avg temp" ;;
  }

  dimension: chilled_count_sum {
    type: number
    sql: ${TABLE}."Chilled count sum" ;;
  }

  dimension: chilled_grade {
    type: string
    sql: ${TABLE}."Chilled grade" ;;
  }

  dimension: chilled_score_sum {
    type: number
    sql: ${TABLE}."Chilled score sum" ;;
  }

  dimension: clothes_note {
    type: string
    sql: ${TABLE}."Clothes note" ;;
  }

  dimension: clothing_with_logo {
    type: string
    sql: ${TABLE}."Clothing with logo" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
  }

  dimension: courier_grade {
    type: string
    sql: ${TABLE}."Courier grade" ;;
  }

  dimension: courier_greeting {
    type: string
    sql: ${TABLE}."Courier greeting" ;;
  }

  dimension: courier_name {
    type: string
    sql: ${TABLE}."Courier name" ;;
  }

  dimension: courier_score {
    type: number
    sql: ${TABLE}."Courier score" ;;
  }

  dimension_group: delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Delivery date" ;;
  }

  dimension: fill_exc_temp {
    type: number
    sql: ${TABLE}."Fill exc temp" ;;
  }

  dimension: frozen_count_sum {
    type: number
    sql: ${TABLE}."Frozen count sum" ;;
  }

  dimension: frozen_grade {
    type: string
    sql: ${TABLE}."Frozen grade" ;;
  }

  dimension: frozen_score_sum {
    type: number
    sql: ${TABLE}."Frozen score sum" ;;
  }

  dimension: greeting_note {
    type: string
    sql: ${TABLE}."Greeting note" ;;
  }

  dimension: last_edit_at {
    type: string
    sql: ${TABLE}."Last edit at" ;;
  }

  dimension: last_edit_by {
    type: string
    sql: ${TABLE}."Last edit by" ;;
  }

  dimension: mystery_company_name {
    type: string
    sql: ${TABLE}."Mystery company name" ;;
  }

  dimension: mystery_supervisor_approval {
    type: string
    sql: ${TABLE}."Mystery supervisor approval" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."Name" ;;
  }

  dimension: order_chilled_score {
    type: number
    sql: ${TABLE}."Order chilled score" ;;
  }

  dimension: order_comment {
    type: string
    sql: ${TABLE}."Order comment" ;;
  }

  dimension: order_frozen_score {
    type: number
    sql: ${TABLE}."Order frozen score" ;;
  }

  dimension: order_grade {
    type: string
    sql: ${TABLE}."Order grade" ;;
  }

  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."Order id" ;;
  }

  dimension: order_quality_fru_vege_score {
    type: number
    sql: ${TABLE}."Order quality fru vege score" ;;
  }

  dimension: order_quality_score {
    type: number
    sql: ${TABLE}."Order quality score" ;;
  }

  dimension: order_score {
    type: number
    sql: ${TABLE}."Order score" ;;
  }

  dimension: order_shelf_life_score {
    type: number
    sql: ${TABLE}."Order shelf life score" ;;
  }

  dimension: part1 {
    type: number
    sql: ${TABLE}."Part1" ;;
  }

  dimension: part2 {
    type: number
    sql: ${TABLE}."Part2" ;;
  }

  dimension: quality_count_sum {
    type: number
    sql: ${TABLE}."Quality count sum" ;;
  }

  dimension: quality_fru_vege_count_sum {
    type: number
    sql: ${TABLE}."Quality fru vege count sum" ;;
  }

  dimension: quality_fru_vege_grade {
    type: string
    sql: ${TABLE}."Quality fru vege grade" ;;
  }

  dimension: quality_fru_vege_score_sum {
    type: number
    sql: ${TABLE}."Quality fru vege score sum" ;;
  }

  dimension: quality_grade {
    type: string
    sql: ${TABLE}."Quality grade" ;;
  }

  dimension: quality_score_sum {
    type: number
    sql: ${TABLE}."Quality score sum" ;;
  }

  dimension: shelf_life_count_sum {
    type: number
    sql: ${TABLE}."Shelf life count sum" ;;
  }

  dimension: shelf_life_grade {
    type: string
    sql: ${TABLE}."Shelf life grade" ;;
  }

  dimension: shelf_life_score_sum {
    type: number
    sql: ${TABLE}."Shelf life score sum" ;;
  }

  dimension: sms_5_min {
    type: string
    sql: ${TABLE}."sms 5 min" ;;
  }

  dimension: sms_note {
    type: string
    sql: ${TABLE}."sms note" ;;
  }

  dimension: sum_for_non_temp {
    type: number
    sql: ${TABLE}."Sum for non temp" ;;
  }

  dimension: sum_temp_sec {
    type: number
    sql: ${TABLE}."Sum temp sec" ;;
  }

  dimension: supervisor_note {
    type: string
    sql: ${TABLE}."Supervisor note" ;;
  }

  dimension: timeslot {
    type: string
    sql: ${TABLE}."Timeslot" ;;
  }

  dimension: tips_note {
    type: string
    sql: ${TABLE}."Tips note" ;;
  }

  dimension: tips_thanks {
    type: string
    sql: ${TABLE}."Tips thanks" ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}."User email" ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}."Warehouse" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      mystery_company_name,
      courier_name,
      name,
      order.courier_name,
      order.warehouse_name,
      order.delivery_point_name,
      order.id
    ]
  }
}
