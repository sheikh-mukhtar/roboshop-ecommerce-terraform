module "component" {
    for_each = var.components
    source = "git::https://github.com/sheikh-mukhtar/roboshop-eccomerce-terraform-module.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}