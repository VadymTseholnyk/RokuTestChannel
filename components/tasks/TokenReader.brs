sub init()
    m.top.functionName = "getContent"
end sub

sub getContent()
    content = createObject("roSGNode", "ContentNode")

    urlTransfer = CreateObject("roUrlTransfer")
    urlTransfer.setUrl(m.top.uri)
    content = parseJSON(urlTransfer.GetToString())

    m.top.content = content
end sub