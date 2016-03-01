{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 287.0, 160.0, 750.0, 480.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 415.0, 424.0, 48.0 ],
					"style" : "",
					"text" : "Thus this regexp matches anything that begins with '/1/fader1', followed by a space, followed by 'whatever', and creates a 'backreference' for 'whatever', and then sends 'whatever' out the second outlet. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 15,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 299.0, 204.0, 424.0, 213.0 ],
					"style" : "",
					"text" : "regexp (or \"regular expression\"), matches text.\nspecial 'meta characters' match patterns\n   . matches any single character \n   [abc] matches any character within the brackets\n   [0-9] matches any characters in the range from 0 to 9\n   n* matches any string containing zero or more occurances of n\n   n? matches zero or one occurances of n\n\nspecial characters are \"escapped\" with \\\\\n    \\\\d  means digit\n    \\\\s  means space\n    \\\\.   represents a dot (period or decimal point)\n\n() - parens grab the match for later reference (a 'backreference) - Max outputs the list of backreferences through the second outlet."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 251.0, 82.0, 137.0, 20.0 ],
					"style" : "",
					"text" : "match and snag value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 5.0, 182.0, 20.0 ],
					"style" : "",
					"text" : "Receive messages on port xxxx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.5, 204.0, 184.0, 20.0 ],
					"style" : "",
					"text" : "Displays all incoming messages"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 416.0, 5.0, 343.25, 158.0 ],
					"style" : "",
					"text" : "1) Fire up TocuOSC on your mobile device\n2) Make sure your phone and PC are on the same network.\n3) Know your PC ip address \n    From the command line (cmd or terminal)\n   (Windows: ipconfig;\n     Mac terminal: ipconfig getifaddr en0 )\n4) In TouchOSC:\n      a) set HOST to ipaddress of computer\n      b) set Port(outgoing) to match Max udpreceive arg\n      c) set LAYOUT to Simple\n      d) set Options (disable accelerometer unless you need it)",
					"textcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-37",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 259.0, 159.0, 66.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 232.0, 112.0, 127.0, 22.0 ],
					"style" : "",
					"text" : "regexp /1/fader1\\\\s(.*)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 42.5, 226.0, 179.0, 22.0 ],
					"style" : "",
					"text" : "/ping"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 202.5, 32.0, 99.0, 22.0 ],
					"style" : "",
					"text" : "udpreceive 8887"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 1 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
