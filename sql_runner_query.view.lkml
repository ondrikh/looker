view: sql_runner_query {
  derived_table: {
    sql: select *
      from bag_prediction.prediction_log
      order by log_time desc
      limit 10
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension_group: log_time {
    type: time
    sql: ${TABLE}."log_time" ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}."country" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."warehouse_id" ;;
  }

  dimension: prediction_type {
    type: number
    sql: ${TABLE}."prediction_type" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}."products" ;;
  }

  dimension: prediction {
    type: string
    sql: ${TABLE}."prediction" ;;
  }

  set: detail {
    fields: [
      id,
      log_time_time,
      country,
      warehouse_id,
      prediction_type,
      order_id,
      products,
      prediction
    ]
  }
}
