view: datacruite_questionnaire {
  sql_table_name: "WORKSPACE_233686783"."datacruite_questionnaire"
    ;;

  dimension: answer {
    type: string
    sql: ${TABLE}."answer" ;;
  }

  dimension: feedback_id {
    type: string
    sql: ${TABLE}."feedback_id" ;;
  }

  dimension: instructions {
    type: string
    sql: ${TABLE}."instructions" ;;
  }

  dimension: interview_id {
    type: string
    sql: ${TABLE}."interview_id" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}."question" ;;
  }

  dimension: question_id {
    type: string
    sql: ${TABLE}."question_id" ;;
  }

  dimension: question_index {
    type: string
    sql: ${TABLE}."question_index" ;;
  }

  dimension: required_question {
    type: string
    sql: ${TABLE}."required_question" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
