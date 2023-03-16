local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local ri = require("luasnip.extras").rep

ls.add_snippets("python", {
    s("radmin", {
        t("@admin.register("), i(1, "Model"), t(")"),
        t({"", "class "}), ri(1), t("Admin("), i(2, "admin.ModelAdmin"), t("):"),
        t({"", "\tlist_display = ["}), i(3, "fields"), t("]")
    })
})

ls.add_snippets("python", {
    s("rtype", {
        t("class "), i(1, "Model"), t("Type(DjangoObjectType):"),
        t({"", "\t"}), t("class Meta:"),
        t({"", "\t\t"}), t("model = "), ri(1),
        t({"", "\t\t"}), t("fields = ["), i(2, "fields"), t("]"),
        t({"", "\t\t"}), t("filter_fields = {"), i(3, "filter_fields"), t("}"),
        t({"", "\t\t"}), t("interfaces = (relay.Node, )"),
    })
})
