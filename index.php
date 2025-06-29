<?php
// will make this robust later -unconnected
header("Content-Type: text/plain");

$_GET = array_change_key_case($_GET, CASE_LOWER);
if (isset($_GET["a"]) && $_GET["a"] == "kv" && isset($_GET["s"]) && isset($_GET["vnum"]))
{
	
    if (intval($_GET["vnum"]) && $_GET["s"])
	{
		exit('-go-
		"Player Info"
		{
			"Avatar" "' . substr($_GET['s'],10) . '"
			"vnum" "' . $_GET['vnum'] .'"
		}

		');

	}
	
}
?>