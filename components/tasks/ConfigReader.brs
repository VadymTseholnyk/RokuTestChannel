sub init()
    m.top.functionName = "getContent"
end sub

sub getContent()
    feed = ReadAsciiFile(m.top.uri)
    content = ParseJson(feed)

    m.top.content = content
end sub