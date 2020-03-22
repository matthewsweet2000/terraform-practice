resource "aws_cloudwatch_event_rule" "my_app_daily" {
  name                = "Run_ECS_daily"
  description         = "Run ECS MyApp 7 am daily"
  schedule_expression = "cron(0 7 * * ? *)"
}

resource "aws_cloudwatch_event_target" "ecs_scheduled_task" {
  target_id = "run-myapp-daily"
  arn       = "${aws_ecs_cluster.example-cluster.arn}"
  rule      = "${aws_cloudwatch_event_rule.my_app_daily.name}"
  role_arn  = "${aws_iam_role.admin.arn}"

  ecs_target {
    task_count          = 1
    task_definition_arn = "${aws_ecs_task_definition.myapp-task-definition.arn}"
  }
}