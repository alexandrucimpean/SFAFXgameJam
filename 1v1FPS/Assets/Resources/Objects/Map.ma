//Maya ASCII 2019 scene
//Name: Map.ma
//Last modified: Thu, Jan 16, 2020 01:25:51 AM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.1.2";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 17763)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "F7ADB789-458F-3993-D6D6-538479DFE866";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 44.306662422835281 32.57958320725055 25.220652005408393 ;
	setAttr ".r" -type "double3" -27.938352727438133 -1729.3999999999132 -4.7876683575831261e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2B84159E-40FC-EF6D-C193-2E86C3BE6626";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 52.134338325525484;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -12 4 6.1762778679497687 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "BC7E80AC-4AB7-E7F2-E59C-CD87989C6997";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0B20DBC8-4F75-53D8-42E8-D388944F1856";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "761B611E-457C-D09E-4798-4992885D35BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.527245087181031 0.19744929771669628 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6DA36AD6-4901-8871-5A87-FC9A2F2CA2E0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 0.59128961939300861;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "73777E44-47D8-4516-004D-9F9ADA7D2D15";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9D67AF2B-4155-3B5F-E263-AEB7CE093C9B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "MapGround";
	rename -uid "A7D89519-4AB1-2C7E-4B57-79A08E7BB80C";
createNode mesh -n "MapGroundShape" -p "MapGround";
	rename -uid "C43ACBF5-49F3-7F60-6BED-818642E97BAC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -12 0 22 12 0 22 -12 0 -22 
		12 0 -22;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "BaseWall";
	rename -uid "9AB2CD19-435D-866D-6FF3-A78C161299B8";
	setAttr ".rp" -type "double3" 0 3 20 ;
	setAttr ".sp" -type "double3" 0 3 20 ;
createNode mesh -n "BaseWallShape" -p "BaseWall";
	rename -uid "9E1DAECF-452A-670F-A501-628225D4DB8A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99632441997528076 0.11764699965715408 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "BaseWall";
	rename -uid "42BFAF3A-47E9-E21B-4F26-82BCB644612A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:47]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.089461140334606171 0.35539287328720093 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.15248813 0.32246432
		 0.12573777 0.26066053 0.11764706 0.2647059 0.05882353 0.29411766 0.14705883 0.32352942
		 0.11764706 0.2647059 0.088235296 0.35294119 0.14705883 0.32352942 0.14705883 0.32352942
		 0.088235296 0.35294119 0.11764706 0.2647059 0.14705883 0.32352942 0.05882353 0.29411766
		 0.11764706 0.2647059 0.94264692 0.0029408592 1 0.11764706 0.99852985 0.11470683 0.29172379
		 0.18039323 0.39312485 0.23197302 0.94117647 0 1 0.11764706 0.99852985 0.11470683
		 0.94117647 0 0.94264692 0.0029408592 1 0.11764706 0.17647059 0.52941179 0.94117647
		 0 0.41176471 0.2647059 0.29411766 0.17647059 0.41176471 0.2647059 0 0.17647059 0.29411766
		 0.17647059 0.29411766 0.17647059 0 0.17647059 0.41176471 0.2647059 0.29411766 0.17647059
		 0.94117647 0 0.41176471 0.2647059 1 0.11764706 0.17647059 0.52941179 0.0032608365
		 0.18299226 0.12573756 0.26066065 0.15248813 0.32246432 0.090686984 0.35784456 0.94264716
		 0.0029414017 0.39312485 0.23197302 0.29172379 0.18039323 0.29172379 0.18039323 0.4114176
		 0.26855555 0.99852955 0.1147062 0.17427407 0.52501875 0.15248808 0.32246432 0.055568118
		 0.28760684 0.29172379 0.18039323 0.4114176 0.26855555 0.99852955 0.1147062 0.17427407
		 0.52501875 0.15248808 0.32246432 0.12573777 0.26066053 0.055568118 0.28760684 0.0032608365
		 0.18299226 0.12573756 0.26066065 0.090686984 0.35784456 0.94264716 0.0029414017;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 -0.15971015 0 0 -0.15971015 
		0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 
		0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 
		-0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 
		0 0 -0.15971015 0 0 -0.15971015 0 0 -0.55013925 0 0 -0.55013925 0 0 -0.55013925 0 
		0 -0.55013925 0;
	setAttr -s 64 ".vt[0:63]"  0 1.95253193 0 0 2.0083351135 -0.049995422
		 -2.049996853 2.9689858 0 -2.000001907349 3 -0.049995422 -2.049996853 4.031013966 0
		 -2.000001907349 4 -0.049995422 0 5.047468185 0 0 4.99166489 -0.049995422 2.049996853 2.9689858 0
		 2.000001907349 3 -0.049995422 2.049996853 4.031013966 0 2.000001907349 4 -0.049995422
		 0 4.99166489 -0.45000458 0 5.047468185 -0.5 -2.049996853 4.031013966 -0.5 -2.000001907349 4 -0.45000458
		 -2.049996853 2.9689858 -0.5 -2.000001907349 3 -0.45000458 0 1.95253193 -0.5 0 2.0083351135 -0.45000458
		 2.049996853 2.9689858 -0.5 2.000001907349 3 -0.45000458 2.049996853 4.031013966 -0.5
		 2.000001907349 4 -0.45000458 0 6 -0.049995422 0 5.94410372 0 -3.96273589 3.96273589 0
		 -4 4 -0.049995422 -4.96910143 1.95000505 0 -5 2 -0.049995422 -14 2 -0.049995422 -14 1.95000505 0
		 -14 0 -0.049995422 -14 0.049995001 0 0 0 -0.049995422 0 0.049995001 0 3.96273589 3.96273589 0
		 4 4 -0.049995422 4.96910143 1.95000505 0 5 2 -0.049995422 14 2 -0.049995422 14 1.95000505 0
		 14 0 -0.049995422 14 0.049995001 0 0 0 -0.45000458 0 0.049995001 -0.5 -14 0.049995001 -0.5
		 -14 0 -0.45000458 -14 1.95000505 -0.5 -14 2 -0.45000458 -4.96910143 1.95000505 -0.5
		 -5 2 -0.45000458 -3.96273589 3.96273589 -0.5 -4 4 -0.45000458 0 6 -0.45000458 0 5.94410372 -0.5
		 3.96273589 3.96273589 -0.5 4 4 -0.45000458 4.96910143 1.95000505 -0.5 5 2 -0.45000458
		 14 1.95000505 -0.5 14 2 -0.45000458 14 0.049995001 -0.5 14 0 -0.45000458;
	setAttr -s 112 ".ed[0:111]"  0 1 0 1 3 0 3 2 0 2 0 0 0 8 0 8 9 0 9 1 0
		 3 5 0 5 4 0 4 2 0 5 7 0 7 6 0 6 4 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 12 13 0 13 22 0
		 22 23 0 23 12 0 12 15 0 15 14 0 14 13 0 15 17 0 17 16 0 16 14 0 17 19 0 19 18 0 18 16 0
		 19 21 0 21 20 0 20 18 0 21 23 0 22 20 0 5 15 0 12 7 0 3 17 0 1 19 0 9 21 0 11 23 0
		 30 49 0 31 33 0 31 30 0 32 47 0 33 32 0 40 61 0 41 43 0 41 40 0 42 63 0 43 42 0 46 47 0
		 48 46 0 49 48 0 60 62 0 60 61 0 63 62 0 24 25 0 25 36 0 36 37 1 37 24 0 24 27 0 27 26 1
		 26 25 0 27 29 0 29 28 0 28 26 0 29 30 0 31 28 0 32 34 0 34 35 1 35 33 0 34 42 0 43 35 0
		 36 38 0 38 39 0 39 37 0 38 41 0 40 39 0 44 45 1 45 62 0 63 44 0 44 47 0 46 45 0 49 51 0
		 51 50 0 50 48 0 51 53 0 53 52 1 52 50 0 53 54 0 54 55 0 55 52 0 54 57 0 57 56 1 56 55 0
		 57 59 0 59 58 0 58 56 0 59 61 0 60 58 0 44 34 1 29 51 0 27 53 0 24 54 0 37 57 0 39 59 0
		 55 13 1 18 45 1 35 0 1 6 25 1;
	setAttr -s 48 -ch 224 ".fc[0:47]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 62 6 4 57
		f 4 -1 4 5 6
		mu 0 4 6 62 0 8
		f 4 -3 7 8 9
		mu 0 4 57 4 2 58
		f 4 -9 10 11 12
		mu 0 4 58 2 12 59
		f 4 -12 13 14 15
		mu 0 4 59 12 10 61
		f 4 -6 16 -15 17
		mu 0 4 8 0 61 10
		f 4 18 19 20 21
		mu 0 4 3 52 1 13
		f 4 -19 22 23 24
		mu 0 4 52 3 5 41
		f 4 -24 25 26 27
		mu 0 4 41 5 7 42
		f 4 -27 28 29 30
		mu 0 4 42 7 9 43
		f 4 -30 31 32 33
		mu 0 4 43 9 11 51
		f 4 -33 34 -21 35
		mu 0 4 51 11 13 1
		f 4 -11 36 -23 37
		mu 0 4 12 2 5 3
		f 4 -8 38 -26 -37
		mu 0 4 2 4 7 5
		f 4 -2 39 -29 -39
		mu 0 4 4 6 9 7
		f 4 -7 40 -32 -40
		mu 0 4 6 8 11 9
		f 4 -18 41 -35 -41
		mu 0 4 8 10 13 11
		f 4 -14 -38 -22 -42
		mu 0 4 10 12 3 13
		f 8 -47 -44 44 42 54 53 52 -46
		mu 0 8 15 55 14 26 22 44 21 24
		f 8 -50 48 51 50 57 -56 56 -48
		mu 0 8 19 63 16 38 20 49 23 36
		f 4 58 59 60 61
		mu 0 4 30 60 17 32
		f 4 -59 62 63 64
		mu 0 4 60 30 28 53
		f 4 -64 65 66 67
		mu 0 4 53 28 27 54
		f 4 -67 68 -45 69
		mu 0 4 54 27 26 14
		f 4 46 70 71 72
		mu 0 4 55 15 39 56
		f 4 -72 73 -52 74
		mu 0 4 56 39 38 16
		f 4 -61 75 76 77
		mu 0 4 32 17 18 34
		f 4 -77 78 49 79
		mu 0 4 34 18 63 19
		f 4 80 81 -58 82
		mu 0 4 25 50 49 20
		f 4 -81 83 -53 84
		mu 0 4 50 25 24 21
		f 4 -55 85 86 87
		mu 0 4 44 22 29 45
		f 4 -87 88 89 90
		mu 0 4 45 29 31 46
		f 4 -90 91 92 93
		mu 0 4 46 31 33 40
		f 4 -93 94 95 96
		mu 0 4 40 33 35 47
		f 4 -96 97 98 99
		mu 0 4 47 35 37 48
		f 4 -99 100 -57 101
		mu 0 4 48 37 36 23
		f 4 -71 45 -84 102
		mu 0 4 39 15 24 25
		f 4 -69 103 -86 -43
		mu 0 4 26 27 29 22
		f 4 -66 104 -89 -104
		mu 0 4 27 28 31 29
		f 4 -63 105 -92 -105
		mu 0 4 28 30 33 31
		f 4 -62 106 -95 -106
		mu 0 4 30 32 35 33
		f 4 -78 107 -98 -107
		mu 0 4 32 34 37 35
		f 4 -80 47 -101 -108
		mu 0 4 34 19 36 37
		f 4 -74 -103 -83 -51
		mu 0 4 38 39 25 20
		f 10 108 -25 -28 -31 109 -85 -54 -88 -91 -94
		mu 0 10 40 52 41 42 43 50 21 44 45 46
		f 10 -97 -100 -102 55 -82 -110 -34 -36 -20 -109
		mu 0 10 40 47 48 23 49 50 43 51 1 52
		f 10 -65 -68 -70 43 -73 110 -4 -10 -13 111
		mu 0 10 60 53 54 14 55 56 62 57 58 59
		f 10 -112 -16 -17 -5 -111 -75 -49 -79 -76 -60
		mu 0 10 60 59 61 0 62 56 16 63 18 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape4" -p "BaseWall";
	rename -uid "2876853F-4DBE-1BD2-A659-4282378E066C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:51]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99632441997528076 0.11764699965715408 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.15248813 0.32246432
		 0.12573777 0.26066053 0.11764706 0.2647059 0.05882353 0.29411766 0.14705883 0.32352942
		 0.11764706 0.2647059 0.088235296 0.35294119 0.14705883 0.32352942 0.14705883 0.32352942
		 0.088235296 0.35294119 0.11764706 0.2647059 0.14705883 0.32352942 0.05882353 0.29411766
		 0.11764706 0.2647059 0.29172379 0.18039323 0.29411766 0.17647059 0 0.17647059 0.29411766
		 0.17647059 0.29411766 0.17647059 0 0.17647059 0.29411766 0.17647059 0.0032608365
		 0.18299226 0.12573756 0.26066065 0.15248813 0.32246432 0.090686984 0.35784456 0.39312485
		 0.23197302 0.29172379 0.18039323 0.29172379 0.18039323 0.4114176 0.26855555 0.17427407
		 0.52501875 0.15248808 0.32246432 0.055568118 0.28760684 0.29172379 0.18039323 0.4114176
		 0.26855555 0.99852961 0.11470634 0.17427407 0.52501875 0.15248808 0.32246432 0.12573777
		 0.26066053 0.055568118 0.28760684 0.0032608365 0.18299226 0.12573756 0.26066065 0.090686984
		 0.35784456 0.9426471 0.0029412648 0.94264674 0.0029405656 0.9426471 0.0029412648
		 0.99852991 0.11470698 0.39312485 0.23197302 0.94264686 0.002940712 0.99853003 0.11470713
		 0.99852961 0.11470634 0.93529528 0.0029406005 0.41176471 0.2647059 0.41176471 0.2647059
		 0.17647059 0.52941179 0.99411881 0.12058764 0.41176471 0.2647059 0.93529522 0.0029406163
		 0.41176471 0.2647059 0.99411881 0.12058766 0.17647059 0.52941179 0.93529528 0.0029405991
		 0.99411881 0.12058765 0.93529522 0.0029405989 0.99411881 0.12058766;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 64 ".pt[0:63]" -type "float3"  0 0.35791272 20 0 0.35791272 
		20 3.0749953 0.21468779 20 3.0000029 0.21468779 20 3.3019922 0 20 3.2214639 0 20 
		0 0 20 0 0 20 -3.0749953 0.21468779 20 -3.0000029 0.21468779 20 -3.3019922 0 20 -3.2214639 
		0 20 0 0 20 0 0 20 3.3019922 0 20 3.2214639 0 20 3.0749953 0.21468779 20 3.0000029 
		0.21468779 20 0 0.35791272 20 0 0.35791272 20 -3.0749953 0.21468779 20 -3.0000029 
		0.21468779 20 -3.3019922 0 20 -3.2214639 0 20 0 -0.49860638 20 0 -0.49860638 20 5.9441037 
		0 20 6 0 20 7.4536524 0.31877801 20 7.5 0.31877801 20 20.455557 0.31877801 20 22.97366 
		0 20 0 0 20.099682 0 0 20 -5.9441037 0 20 -6 0 20 -7.4536524 0.31877801 20 -7.5 0.31877801 
		20 -20.455557 0.31877801 20 -22.97366 0 20 0 0 19.900318 0 0 20 22.97366 0 20 20.455557 
		0.31877801 20 7.4536524 0.31877801 20 7.5 0.31877801 20 5.9441037 0 20 6 0 20 0 -0.49860638 
		20 0 -0.49860638 20 -5.9441037 0 20 -6 0 20 -7.4536524 0.31877801 20 -7.5 0.31877801 
		20 -20.455557 0.31877801 20 -22.97366 0 20 20.309471 0.31877801 20 20.309471 0.31877801 
		20 22.906021 0 20.099682 22.906021 0 19.900318 -20.309471 0.31877801 20 -20.309471 
		0.31877801 20 -22.906021 0 20.099682 -22.906021 0 19.900318;
	setAttr -s 64 ".vt[0:63]"  0 1.79282176 0 0 1.84862494 -0.049995422
		 -2.049996853 2.41884661 0 -2.000001907349 2.44986081 -0.049995422 -2.049996853 3.48087478 0
		 -2.000001907349 3.44986081 -0.049995422 0 4.49732876 0 0 4.44152546 -0.049995422
		 2.049996853 2.41884661 0 2.000001907349 2.44986081 -0.049995422 2.049996853 3.48087478 0
		 2.000001907349 3.44986081 -0.049995422 0 4.44152546 -0.45000458 0 4.49732876 -0.5
		 -2.049996853 3.48087478 -0.5 -2.000001907349 3.44986081 -0.45000458 -2.049996853 2.41884661 -0.5
		 -2.000001907349 2.44986081 -0.45000458 0 1.79282176 -0.5 0 1.84862494 -0.45000458
		 2.049996853 2.41884661 -0.5 2.000001907349 2.44986081 -0.45000458 2.049996853 3.48087478 -0.5
		 2.000001907349 3.44986081 -0.45000458 0 6 -0.049995422 0 5.94410372 0 -3.96273589 3.96273589 0
		 -4 4 -0.049995422 -4.96910143 1.95000505 0 -5 2 -0.049995422 -14 1.95000756 -3.8146973e-06
		 -14 0.049992472 -3.8146973e-06 0 0 -0.049995422 0 0.049995001 0 3.96273589 3.96273589 0
		 4 4 -0.049995422 4.96910143 1.95000505 0 5 2 -0.049995422 14 1.95000756 -3.8146973e-06
		 14 0.049992472 -3.8146973e-06 0 0 -0.45000458 0 0.049995001 -0.5 -14 0.049992472 -0.49999619
		 -14 1.95000756 -0.49999619 -4.96910143 1.95000505 -0.5 -5 2 -0.45000458 -3.96273589 3.96273589 -0.5
		 -4 4 -0.45000458 0 6 -0.45000458 0 5.94410372 -0.5 3.96273589 3.96273589 -0.5 4 4 -0.45000458
		 4.96910143 1.95000505 -0.5 5 2 -0.45000458 14 1.95000756 -0.49999619 14 0.049992472 -0.49999619
		 -13.90001965 2 -0.049995422 -13.90001965 2 -0.45000458 -13.90001965 0 -0.049995422
		 -13.90001965 0 -0.45000458 13.90001965 2 -0.049995422 13.90001965 2 -0.45000458 13.90001965 0 -0.049995422
		 13.90001965 0 -0.45000458;
	setAttr -s 116 ".ed[0:115]"  0 1 0 1 3 0 3 2 0 2 0 0 0 8 0 8 9 0 9 1 0
		 3 5 0 5 4 0 4 2 0 5 7 0 7 6 0 6 4 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 12 13 0 13 22 0
		 22 23 0 23 12 0 12 15 0 15 14 0 14 13 0 15 17 0 17 16 0 16 14 0 17 19 0 19 18 0 18 16 0
		 19 21 0 21 20 0 20 18 0 21 23 0 22 20 0 5 15 0 12 7 0 3 17 0 1 19 0 9 21 0 11 23 0
		 30 31 0 38 39 0 43 42 0 54 55 0 24 25 0 25 34 0 34 35 1 35 24 0 24 27 0 27 26 1 26 25 0
		 27 29 0 29 28 0 28 26 0 29 56 0 30 28 0 32 33 1 33 31 0 32 62 0 39 33 0 34 36 0 36 37 0
		 37 35 0 36 38 0 40 41 1 41 55 0 40 59 0 42 41 0 45 44 0 44 43 0 45 47 0 47 46 1 46 44 0
		 47 48 0 48 49 0 49 46 0 48 51 0 51 50 1 50 49 0 51 53 0 53 52 0 52 50 0 53 61 0 54 52 0
		 40 32 1 29 45 0 27 47 0 24 48 0 35 51 0 37 53 0 49 13 1 18 41 1 33 0 1 6 25 1 56 30 0
		 57 45 0 43 57 0 58 32 0 31 58 0 59 42 0 60 37 0 38 60 0 61 54 0 62 39 0 63 40 0 55 63 0
		 30 43 0 57 56 0 58 59 0 42 31 0 60 61 0 54 38 0 39 55 0 63 62 0;
	setAttr -s 52 -ch 232 ".fc[0:51]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 41 36 4 6
		f 4 -7 -6 -5 0
		mu 0 4 6 8 0 41
		f 4 -10 -9 -8 2
		mu 0 4 36 37 2 4
		f 4 -13 -12 -11 8
		mu 0 4 37 38 12 2
		f 4 -16 -15 -14 11
		mu 0 4 38 40 10 12
		f 4 -18 14 -17 5
		mu 0 4 8 10 40 0
		f 4 -22 -21 -20 -19
		mu 0 4 3 13 1 31
		f 4 -25 -24 -23 18
		mu 0 4 31 22 5 3
		f 4 -28 -27 -26 23
		mu 0 4 22 23 7 5
		f 4 -31 -30 -29 26
		mu 0 4 23 24 9 7
		f 4 -34 -33 -32 29
		mu 0 4 24 30 11 9
		f 4 -36 20 -35 32
		mu 0 4 30 1 13 11
		f 4 -38 22 -37 10
		mu 0 4 12 3 5 2
		f 4 36 25 -39 7
		mu 0 4 2 5 7 4
		f 4 38 28 -40 1
		mu 0 4 4 7 9 6
		f 4 39 31 -41 6
		mu 0 4 6 9 11 8
		f 4 40 34 -42 17
		mu 0 4 8 11 13 10
		f 4 41 21 37 13
		mu 0 4 10 13 3 12
		f 4 -45 -109 42 -112
		mu 0 4 45 44 43 34
		f 4 45 -115 -44 -114
		mu 0 4 47 49 48 42
		f 4 -50 -49 -48 -47
		mu 0 4 16 18 14 39
		f 4 -53 -52 -51 46
		mu 0 4 39 32 15 16
		f 4 -56 -55 -54 51
		mu 0 4 32 33 51 15
		f 4 -58 -97 -57 54
		mu 0 4 33 43 60 51
		f 4 -60 -59 -100 -101
		mu 0 4 34 35 53 54
		f 4 -62 -106 -61 58
		mu 0 4 35 48 63 53
		f 4 -65 -64 -63 48
		mu 0 4 18 55 46 14
		f 4 -103 -104 -66 63
		mu 0 4 55 56 42 46
		f 4 -107 -108 -68 -67
		mu 0 4 59 58 49 29
		f 4 -70 -102 -69 66
		mu 0 4 29 45 61 59
		f 4 -72 -71 -98 -99
		mu 0 4 44 25 52 50
		f 4 -75 -74 -73 70
		mu 0 4 25 26 17 52
		f 4 -78 -77 -76 73
		mu 0 4 26 21 19 17
		f 4 -81 -80 -79 76
		mu 0 4 21 27 20 19
		f 4 -84 -83 -82 79
		mu 0 4 27 28 57 20
		f 4 -86 -105 -85 82
		mu 0 4 28 47 62 57
		f 4 -87 68 -111 99
		mu 0 4 53 59 61 54
		f 4 97 -88 56 -110
		mu 0 4 50 52 51 60
		f 4 87 72 -89 53
		mu 0 4 51 52 17 15
		f 4 88 75 -90 50
		mu 0 4 15 17 19 16
		f 4 89 78 -91 49
		mu 0 4 16 19 20 18
		f 4 90 81 -92 64
		mu 0 4 18 20 57 55
		f 4 91 84 -113 102
		mu 0 4 55 57 62 56
		f 4 106 86 60 -116
		mu 0 4 58 59 53 63
		f 10 77 74 71 44 69 -94 30 27 24 -93
		mu 0 10 21 26 25 44 45 29 24 23 22 31
		f 10 92 19 35 33 93 67 -46 85 83 80
		mu 0 10 21 31 1 30 24 29 49 47 28 27
		f 10 -96 12 9 3 -95 59 -43 57 55 52
		mu 0 10 39 38 37 36 41 35 34 43 33 32
		f 10 47 62 65 43 61 94 4 16 15 95
		mu 0 10 39 14 46 42 48 35 41 0 40 38
		f 4 108 98 109 96
		mu 0 4 43 44 50 60
		f 4 110 101 111 100
		mu 0 4 54 61 45 34
		f 4 112 104 113 103
		mu 0 4 56 62 47 42
		f 4 114 107 115 105
		mu 0 4 48 49 58 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Box";
	rename -uid "F5E3A048-4213-E1FA-B80A-F58922522E18";
	setAttr ".rp" -type "double3" 0 1.5011850564069764 0 ;
	setAttr ".sp" -type "double3" 0 1.5011850564069764 0 ;
createNode mesh -n "BoxShape" -p "Box";
	rename -uid "F395DF78-4A7C-E195-7238-B2BAE2D72D73";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape3" -p "Box";
	rename -uid "70A9DC2D-4933-7F49-1F9B-078783542BEA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.011479575 0.625 0.011479575 0.625 0.7385205
		 0.875 0.011479497 0.125 0.011479497 0.375 0.7385205 0.375 0 0.625 0 0.625 0.011479575
		 0.375 0.011479575 0.875 0 0.875 0.011479497 0.375 0.7385205 0.625 0.7385205 0.625
		 0.75 0.375 0.75 0.125 0 0.125 0.011479497;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1 0.50118506 1 1 0.50118506 
		1 -1 2.5011849 1 1 2.5011849 1 -1 2.5011849 -1 1 2.5011849 -1 -1 0.50118506 -1 1 
		0.50118506 -1 -1 0.59302163 1 1 0.59302163 1 1 0.59302098 -1 -1 0.59302098 -1 -1.0333333 
		0.50118506 1.0333333 1.0333333 0.50118506 1.0333333 1.0333333 0.59302163 1.0333333 
		-1.0333333 0.59302163 1.0333333 1.0333333 0.50118506 -1.0333333 1.0333333 0.59302098 
		-1.0333333 -1.0333333 0.59302098 -1.0333333 -1.0333333 0.50118506 -1.0333333;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 -0.45408171 0.5 0.5 -0.45408171 0.5
		 0.5 -0.45408204 -0.5 -0.5 -0.45408204 -0.5 -0.51666665 -0.5 0.51666665 0.51666665 -0.5 0.51666665
		 0.51666665 -0.45408171 0.51666665 -0.51666665 -0.45408171 0.51666665 0.51666665 -0.5 -0.51666665
		 0.51666665 -0.45408204 -0.51666665 -0.51666665 -0.45408204 -0.51666665 -0.51666665 -0.5 -0.51666665;
	setAttr -s 36 ".ed[0:35]"  0 1 1 2 3 0 4 5 0 6 7 1 2 4 0 3 5 0 4 11 0
		 5 10 0 6 0 1 7 1 1 8 2 0 9 3 0 8 9 0 9 10 0 10 11 0 11 8 0 0 12 1 1 13 1 12 13 0
		 9 14 1 13 14 0 8 15 1 15 14 0 12 15 0 7 16 1 16 13 0 10 17 1 17 16 0 14 17 0 11 18 1
		 17 18 0 6 19 1 19 16 0 18 19 0 19 12 0 18 15 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 12 11 -2 -11
		mu 0 4 14 15 3 2
		f 4 1 5 -3 -5
		mu 0 4 2 3 5 4
		f 4 2 7 14 -7
		mu 0 4 4 5 16 19
		f 4 3 9 -1 -9
		mu 0 4 6 7 9 8
		f 4 13 -8 -6 -12
		mu 0 4 15 17 11 3
		f 4 15 10 4 6
		mu 0 4 18 14 2 13
		f 4 18 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 -26 -28 -29 -21
		mu 0 4 21 24 25 22
		f 4 -31 27 -33 -34
		mu 0 4 26 27 28 29
		f 4 34 23 -36 33
		mu 0 4 30 20 23 31
		f 4 0 17 -19 -17
		mu 0 4 0 1 21 20
		f 4 -13 21 22 -20
		mu 0 4 15 14 23 22
		f 4 -10 24 25 -18
		mu 0 4 1 10 24 21
		f 4 -14 19 28 -27
		mu 0 4 17 15 22 25
		f 4 -15 26 30 -30
		mu 0 4 19 16 27 26
		f 4 -4 31 32 -25
		mu 0 4 7 6 29 28
		f 4 8 16 -35 -32
		mu 0 4 12 0 20 30
		f 4 -16 29 35 -22
		mu 0 4 14 18 31 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "BaseGround";
	rename -uid "9C6510CB-4189-4B95-F897-F58A9F3F2159";
	setAttr ".rp" -type "double3" 0 0.29946656278247175 21.236303415398876 ;
	setAttr ".sp" -type "double3" 0 0.29946656278247175 21.236303415398876 ;
createNode mesh -n "BaseGroundShape" -p "BaseGround";
	rename -uid "BF39C720-4F0F-29BD-AEF0-99BA12366D89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape5" -p "BaseGround";
	rename -uid "031ACFA4-458B-E96F-A465-3AA946B48ABE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -8.4833326 0.42446655 22.136303 
		8.4833326 0.42446655 22.136303 -5.916667 0.50810307 22.136303 5.916667 0.50810307 
		22.136303 -5.916667 0.50810307 20.336304 5.916667 0.50810307 20.336304 -8.4833326 
		0.42446655 20.336304 8.4833326 0.42446655 20.336304;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Pole";
	rename -uid "3CB2520F-4488-0D91-9249-3BBE173A89C8";
	setAttr ".rp" -type "double3" -12 4 0 ;
	setAttr ".sp" -type "double3" -12 4 0 ;
createNode mesh -n "PoleShape" -p "Pole";
	rename -uid "0877F890-496F-7EE1-E38E-039796A4B66A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.37499997019767761 0.0037215000484138727 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "Pole";
	rename -uid "4BD9AB5A-4FB7-6492-0686-D3892C3AC291";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.37499997019767761 0.0037215000484138727 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 34 ".uvst[0].uvsp[0:33]" -type "float2" 0.375 0.25 0.625
		 0.75 0.375 1 0.625 1 0.125 0 0.125 0.25 0.375 0 0.625 0.50230139 0.375 0.75 0.61250114
		 0.25 0.375 0.5 0.625 0 0.875 0 0.875 0.24769862 0.625 0.24769866 0.61250114 0.5 0.625
		 0.0047951243 0.625 0.74520481 0.875 0.0047951955 0.37499997 0.0037215 0.125 0.0038409978
		 0.375 0.74615896 0.375 0 0.625 0 0.625 0.0047951243 0.37499997 0.0037215 0.375 0.74615896
		 0.625 0.74520481 0.625 0.75 0.375 0.75 0.125 0 0.125 0.0038409978 0.875 0 0.875 0.0047951955;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  -12 0.5 0 -12 0.5 0 -12 7.5 
		0 -12 7.5 0 -12 0.5 0 -12 0.5 0 -12 6.7893605 0 -12 6.6944094 0 -12 6.6944094 0 -12 
		6.7893605 0 -12 0.61991572 0 -12 0.61991763 0 -12 0.60420215 0 -12 0.61344677 0 -12 
		0.5 0 -12 0.5 0 -12 0.61991572 0 -12 0.60420215 0 -12 0.61344677 0 -12 0.61991763 
		0 -12 0.5 0 -12 0.5 0;
	setAttr -s 22 ".vt[0:21]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5
		 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.45000458 0.39848006 0.5 0.5 0.38491565 0.5 0.5 0.38491565 -0.5
		 0.45000458 0.39848006 -0.5 0.5 -0.48286918 0.5 0.5 -0.48286891 -0.5 -0.5 -0.48511398 0.5
		 -0.5 -0.48379332 -0.5 -0.55000019 -0.5 0.55000019 0.55000019 -0.5 0.55000019 0.55000019 -0.48286918 0.55000019
		 -0.55000019 -0.48511398 0.55000019 -0.55000019 -0.48379332 -0.55000019 0.55000019 -0.48286891 -0.55000019
		 0.55000019 -0.5 -0.55000019 -0.55000019 -0.5 -0.55000019;
	setAttr -s 39 ".ed[0:38]"  0 1 1 2 6 0 3 9 0 4 5 1 2 3 0 3 13 0 4 0 1
		 5 1 1 7 6 0 8 11 0 9 8 0 6 9 1 8 7 1 10 7 0 10 11 0 12 2 0 10 12 0 12 13 0 13 11 0
		 0 14 1 1 15 1 14 15 0 10 16 1 15 16 0 12 17 1 16 17 0 14 17 0 13 18 1 11 19 1 18 19 0
		 5 20 1 19 20 0 4 21 1 21 20 0 18 21 0 21 14 0 17 18 0 20 15 0 16 19 0;
	setAttr -s 19 -ch 78 ".fc[0:18]" -type "polyFaces" 
		f 4 21 23 25 -27
		mu 0 4 22 23 24 25
		f 4 1 11 -3 -5
		mu 0 4 0 9 15 10
		f 4 29 31 -34 -35
		mu 0 4 26 27 28 29
		f 4 3 7 -1 -7
		mu 0 4 8 1 3 2
		f 4 14 -10 12 -14
		mu 0 4 16 18 13 14
		f 4 35 26 36 34
		mu 0 4 30 22 25 31
		f 4 -9 -13 -11 -12
		mu 0 4 9 14 7 15
		f 4 -38 -32 -39 -24
		mu 0 4 23 32 33 24
		f 5 -17 13 8 -2 -16
		mu 0 5 19 16 14 9 0
		f 4 -18 15 4 5
		mu 0 4 20 19 0 5
		f 5 2 10 9 -19 -6
		mu 0 5 10 15 7 17 21
		f 4 0 20 -22 -20
		mu 0 4 6 11 23 22
		f 4 16 24 -26 -23
		mu 0 4 16 19 25 24
		f 4 18 28 -30 -28
		mu 0 4 21 17 27 26
		f 4 -4 32 33 -31
		mu 0 4 1 8 29 28
		f 4 6 19 -36 -33
		mu 0 4 4 6 22 30
		f 4 17 27 -37 -25
		mu 0 4 19 20 31 25
		f 4 -8 30 37 -21
		mu 0 4 11 12 32 23
		f 4 -15 22 38 -29
		mu 0 4 18 16 24 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Wall1";
	rename -uid "F5AB3701-456B-D1EE-CD07-AA8301C71C81";
	setAttr ".rp" -type "double3" -12.5 4 0 ;
	setAttr ".sp" -type "double3" -12.5 4 0 ;
createNode mesh -n "WallShape1" -p "Wall1";
	rename -uid "9FA1814D-4674-2D02-0D8C-8E9A5186B5BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -12 8 22 -13 0 22 -12 8 -22 
		-13 0 -22;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Wall2";
	rename -uid "B3CA50D2-4417-0B4E-39BF-96BB71D71479";
	setAttr ".rp" -type "double3" 12.5 4 0 ;
	setAttr ".sp" -type "double3" 12.5 4 0 ;
createNode mesh -n "WallShape2" -p "Wall2";
	rename -uid "76CEDB2E-4FAF-081D-E6A7-6BA2C3934319";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  13 0 22 12 8 22 13 0 -22 
		12 8 -22;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Wall3";
	rename -uid "0C5DF639-4CBA-4133-9B29-ABA2BD999B3F";
	setAttr ".rp" -type "double3" 0 4 22.5 ;
	setAttr ".sp" -type "double3" 0 4 22.5 ;
createNode mesh -n "Wall3Shape" -p "Wall3";
	rename -uid "C9C2E2E0-43D1-62D0-D8C8-FB8052180829";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -12 0 22 -13 8 22 13 0 23 
		12 8 23;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Wall4";
	rename -uid "81AF8096-484D-E07E-F844-769154B62114";
	setAttr ".rp" -type "double3" 0 4 -22.5 ;
	setAttr ".sp" -type "double3" 0 4 -22.5 ;
createNode mesh -n "WallShape4" -p "Wall4";
	rename -uid "C8410D69-4B1F-C848-9D13-2DBAD699CA5C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  13 0 -23 12 8 -23 -12 0 -22 
		-13 8 -22;
	setAttr -s 4 ".vt[0:3]"  -0.5 0 0.5 0.5 0 0.5 -0.5 0 -0.5 0.5 0 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D4148923-4506-4B56-37A7-B3B0992310D4";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "77762774-4F79-5255-CD00-0BBEBE6108B2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2E8E6129-415F-743B-F4B7-2088A8A4F4B8";
createNode displayLayerManager -n "layerManager";
	rename -uid "23DC017A-4ECC-0F1E-F0B5-99B42FB3DEB8";
createNode displayLayer -n "defaultLayer";
	rename -uid "F499F4E8-41CB-86AA-E361-C3938ECFA301";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0AEC45F7-4FAB-C022-E46D-3A80EB5B38CF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5CBFFCA4-43BA-6DA1-06BC-BC8311405C6F";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "89A13EB6-4127-8E23-DAE7-E08A0769569F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1231\n            -height 742\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1231\\n    -height 742\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1231\\n    -height 742\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C809718B-49DD-847E-55C7-85AD5F6B9491";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "55200DEF-4DDC-511E-7EE2-C7A42E7FD431";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8 8 8 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyCylProj -n "polyCylProj1";
	rename -uid "9E088387-41BD-941E-9707-B5BBCD8E7F5C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -12 4 0 ;
	setAttr ".ps" -type "double2" 180 8 ;
	setAttr ".r" 1.1000003814697266;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "4E829E55-4015-65FF-E833-E7915ED763F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -12.192768096923828 3.8747062683105469 -0.067884206771850586 ;
	setAttr ".ro" -type "double3" -27.938351316209975 70.600000452600852 6.0851933111821489e-07 ;
	setAttr ".ps" -type "double2" 7.6950395192402654 7.6950395192402654 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyContourProj -n "polyContourProj1";
	rename -uid "8B9AAE84-440F-2283-D3B3-AF88CCEAF504";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".cv" -type "componentList" 0;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "69A1968D-4867-8B1C-FD5B-79B9F84D644E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8 8 8 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "7CB609FC-448C-A4CE-0CEF-62B5886F68C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 3 3 3 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "D0915AF4-4806-49AE-A782-FFBB19999005";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 18.012002944946289 18.012002944946289 18.012002944946289 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId1";
	rename -uid "4848C4F4-4F6C-581F-60B4-9CBC43AFC0E0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "EC99AE4A-40DB-26D1-97AF-F19C2CE194DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:51]";
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "F8BE84C6-4A54-6B53-A218-7E974A7C9BAC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 17.966665267944336 17.966665267944336 17.966665267944336 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "D4CE73CE-4A63-DE6B-3723-58820E60EBFA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 3.0999999046325684 3.0999999046325684 3.0999999046325684 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyAutoProj4.out" "BaseWallShape.i";
connectAttr "groupId1.id" "BaseWallShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "BaseWallShape.iog.og[0].gco";
connectAttr "polyAutoProj6.out" "BoxShape.i";
connectAttr "polyAutoProj5.out" "BaseGroundShape.i";
connectAttr "polyAutoProj2.out" "PoleShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape2.o" "polyAutoProj1.ip";
connectAttr "PoleShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyCylProj1.ip";
connectAttr "PoleShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyPlanarProj1.ip";
connectAttr "PoleShape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyContourProj1.ip";
connectAttr "PoleShape.wm" "polyContourProj1.mp";
connectAttr "polyContourProj1.out" "polyAutoProj2.ip";
connectAttr "PoleShape.wm" "polyAutoProj2.mp";
connectAttr "polySurfaceShape3.o" "polyAutoProj3.ip";
connectAttr "BoxShape.wm" "polyAutoProj3.mp";
connectAttr "groupParts1.og" "polyAutoProj4.ip";
connectAttr "BaseWallShape.wm" "polyAutoProj4.mp";
connectAttr "polySurfaceShape4.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySurfaceShape5.o" "polyAutoProj5.ip";
connectAttr "BaseGroundShape.wm" "polyAutoProj5.mp";
connectAttr "polyAutoProj3.out" "polyAutoProj6.ip";
connectAttr "BoxShape.wm" "polyAutoProj6.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "MapGroundShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BoxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BaseGroundShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PoleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Wall3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BaseWallShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of Map.ma
