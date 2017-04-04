$SPACE = '+'
$googleSearch = 'https://www.google.com/#q='
$youtubeSearch = 'https://www.youtube.com/results?search_query='
    
if($($args[0]) -eq "goo")
{
    for($i = 1; $i -lt $args.Length; $i++)
    {
        $nextParam += $($($args[$i])+$SPACE)
    }
    $nextSearch = $($googleSearch + $nextParam)
    Start-Process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList $nextSearch
}
elseif($($args[0]) -eq "yt")
{
    for($i = 1; $i -lt $args.Length; $i++)
    {
        $nextParam += $($($args[$i])+$SPACE)
    }
    $nextSearch = $($youtubeSearch + $nextParam)
    Start-Process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList $nextSearch
}