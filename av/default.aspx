<?php
/*
AVATAR PROVIDER GMOD 8-9
DEVELOPED BY CARLOS AND UNCONNECTED
REVERSE ENGINEERED BY UNCONNECTED

SPECIAL THANKS TO NAFRAYU
*/
$v = isset($_GET['v']) ? $_GET['v'] : 'default';

function abort($code = 400, $message = "Bad Request") {
    header("Content-Type: application/json");
    http_response_code($code);
    die(json_encode(["message" => $message]));
}

switch ($v) {	
    case '80322':
        $id = $_GET['stid'] ?? $_GET['i'] ?? abort();

        preg_match('/STEAM_0:(\d):(\d+)/', $id, $matches);
        if (count($matches) !== 3) abort();
        $stid = $matches[2];
		
        if (is_numeric($stid)) {
            $stid = (int)$stid;

            header("Pragma: cache");
            header("Cache-Control: max-age=120");

            if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/av/avatars/" . $stid . ".jpg")) {
                die('<body style="margin:0"><img src="/av/avatars/' . $stid . '.jpg"></body>');
            }

            abort(404, "Not Found");
        } else {
            abort();
        }
        break;
		
    case '802':
        $id = $_GET['stid'] ?? $_GET['i'] ?? abort();

        preg_match('/STEAM_0:(\d):(\d+)/', $id, $matches);
        if (count($matches) !== 3) abort();
        $stid = $matches[2];
		
        if (is_numeric($stid)) {
            $stid = (int)$stid;

            header("Pragma: cache");
            header("Cache-Control: max-age=120");

            if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/av/avatars/" . $stid . ".jpg")) {
                die('<body style="margin:0"><img src="/av/avatars/' . $stid . '.jpg"></body>');
            }

            abort(404, "Not Found");
        } else {
            abort();
        }
        break;
		
    case '803':
        $id = $_GET['stid'] ?? $_GET['i'] ?? abort();

        preg_match('/STEAM_0:(\d):(\d+)/', $id, $matches);
        if (count($matches) !== 3) abort();
        $stid = $matches[2];
		
        if (is_numeric($stid)) {
            $stid = (int)$stid;

            header("Pragma: cache");
            header("Cache-Control: max-age=120");

            if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/av/avatars/" . $stid . ".jpg")) {
                die('<body style="margin:0"><img src="/av/avatars/' . $stid . '.jpg"></body>');
            }

            abort(404, "Not Found");
        } else {
            abort();
        }
        break;
		
    case '8032':
        $id = $_GET['stid'] ?? $_GET['i'] ?? abort();

        preg_match('/STEAM_0:(\d):(\d+)/', $id, $matches);
        if (count($matches) !== 3) abort();
        $stid = $matches[2];
		
        if (is_numeric($stid)) {
            $stid = (int)$stid;

            header("Pragma: cache");
            header("Cache-Control: max-age=120");

            if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/av/avatars/" . $stid . ".jpg")) {
                die('<body style="margin:0"><img src="/av/avatars/' . $stid . '.jpg"></body>');
            }

            abort(404, "Not Found");
        } else {
            abort();
        }
        break;
		
    case '80400':
        $id = $_GET['stid'] ?? $_GET['i'] ?? abort();

        preg_match('/STEAM_0:(\d):(\d+)/', $id, $matches);
        if (count($matches) !== 3) abort();
        $stid = $matches[2];
		
        if (is_numeric($stid)) {
            $stid = (int)$stid;

            header("Pragma: cache");
            header("Cache-Control: max-age=120");

            if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/av/avatars/" . $stid . ".jpg")) {
                die('<body style="margin:0"><img src="/av/avatars/' . $stid . '.jpg"></body>');
            }

            abort(404, "Not Found");
        } else {
            abort();
        }
        break;

    default:
        $av = (int)$_GET["av"];

        header("Pragma: cache");
        header("Cache-Control: max-age=120");

        if (file_exists($_SERVER["DOCUMENT_ROOT"] . "/av/avatars/" . $av . ".jpg")) {
            die('<body style="margin:0"><img src="/av/avatars/' . $av . '.jpg"></body>');
        }

        abort(404, "Not Found");
        break;
}
?>