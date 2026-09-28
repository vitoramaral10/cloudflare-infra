resource "cloudflare_ruleset" "vitormelo_waf_custom" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_firewall_custom"
  zone_id = "4b5854dc38bb066f8cb728d78e60ce53"
  rules = [{
    action = "skip"
    action_parameters = {
      phases = ["http_request_sbfm"]
    }
    description  = "permitir Claude no gateway MCP"
    enabled      = true
    expression   = "(http.host eq \"jarvis-mcp.vitormelo.dev.br\") or (http.host eq \"patchbay.vitormelo.dev.br\")"
    id           = null
    last_updated = "2026-09-17T10:57:02.261373Z"
    logging = {
      enabled = true
    }
    ref     = "f9cf014fc65045aa8d57f811b0816c9e"
    version = "6"
    }, {
    action       = "block"
    description  = "restringir origem dos MCP"
    enabled      = true
    expression   = "((http.host eq \"jarvis-mcp.vitormelo.dev.br\" or http.host eq \"patchbay.vitormelo.dev.br\") and not (ip.src in {160.79.104.0/21 2607:6bc0::/48} or ip.src in $openai_egress or ip.src.country eq \"BR\"))"
    id           = null
    last_updated = "2026-09-22T11:40:18.385914Z"
    ref          = "28bcb762a6b54ab3aedf9ad02a49adac"
    version      = "10"
    }, {
    action       = "block"
    description  = "AI Crawl Control - Block AI bots by User Agent"
    enabled      = true
    expression   = "(not (http.host in {\"jarvis-mcp.vitormelo.dev.br\" \"patchbay.vitormelo.dev.br\"})) and (http.request.uri.path ne \"/robots.txt\") and ((http.user_agent contains \"Applebot\") or (http.user_agent contains \"archive.org_bot\") or (http.user_agent contains \"bingbot\") or (http.user_agent contains \"ChatGPT-User\") or (http.user_agent contains \"DuckAssistBot\") or (http.user_agent contains \"Googlebot\") or (http.user_agent contains \"meta-externalfetcher\") or (http.user_agent contains \"MistralAI-User\") or (http.user_agent contains \"OAI-SearchBot\") or (http.user_agent contains \"Perplexity-User\") or (http.user_agent contains \"PerplexityBot\") or (http.user_agent contains \"ProRataInc\"))"
    id           = null
    last_updated = "2026-09-17T11:03:38.770852Z"
    ref          = "[CF AI Audit]"
    version      = "19"
    }, {
    action       = "block"
    description  = "Brazil"
    enabled      = true
    expression   = "(ip.src.country ne \"BR\" and not (http.host in {\"jarvis-mcp.vitormelo.dev.br\" \"patchbay.vitormelo.dev.br\"}))"
    id           = null
    last_updated = "2026-09-17T11:03:38.349335Z"
    ref          = "da055e42e0ff4d19b348c71d8b02c20a"
    version      = "11"
  }]
}

