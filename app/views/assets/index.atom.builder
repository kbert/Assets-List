atom_feed do |feed|
  feed.title("The LJMU Assets News Feed")
  feed.updated(@assets.first.created_at)
  @assets.each do |assets|
    feed.entry(assets) do |entry|
    entry.title(assets.title)
    entry.content(assets.method, :type => 'html')
    end
  end
end
