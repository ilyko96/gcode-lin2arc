;FLAVOR:Marlin
;TIME:13
;Filament used: 0.00752143m
;Layer height: 0.2
;MINX:110.462
;MINY:105.176
;MINZ:0.3
;MAXX:124.771
;MAXY:129.19
;MAXZ:0.55
;Generated with Cura_SteamEngine 4.4.0
M140 S60
M105
M190 S60
M104 S210
M105
M109 S210
M82 ;absolute extrusion mode
M201 X500.00 Y500.00 Z100.00 E5000.00 ;Setup machine max acceleration
M203 X500.00 Y500.00 Z10.00 E50.00 ;Setup machine max feedrate
M204 P500.00 R1000.00 T500.00 ;Setup Print/Retract/Travel acceleration
M205 X8.00 Y8.00 Z0.40 E5.00 ;Setup Jerk
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate

G28 ;Home

G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X10.1 Y20 Z0.28 F5000.0 ;Move to start position
G1 X10.1 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X10.4 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.4 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G92 E0
G92 E0
G1 F3000 E-7
;LAYER_COUNT:1
;LAYER:0
M107
G1 F300 Z0.55
;MESH:232f4345-4857-41cd-823a-5f530e13b309.stl
G0 F6000 X111.52 Y113.478 Z0.55
;TYPE:WALL-OUTER
G1 F300 Z0.3
G1 F3000 E0
G1 F945.4 X111.638 Y113.902 E0.02601
G1 X111.73 Y114.176 E0.04309
G1 X111.945 Y114.702 E0.07667
G1 X112.073 Y114.965 E0.09395
G1 X112.353 Y115.459 E0.12751
G1 X112.585 Y115.803 E0.15203
G1 X112.79 Y116.09 E0.17287
G1 X112.903 Y116.266 E0.18523
G1 X112.999 Y116.438 E0.19687
G1 X113.082 Y116.606 E0.20795
G1 X113.165 Y116.798 E0.22031
G1 X113.23 Y116.975 E0.23145
G1 X113.299 Y117.194 E0.24502
G1 X113.34 Y117.355 E0.25484
G1 X113.382 Y117.564 E0.26743
G1 X113.406 Y117.721 E0.27682
G1 X113.428 Y117.947 E0.29024
G1 X113.434 Y118.352 E0.31418
G1 X113.412 Y118.639 E0.33119
G1 X113.369 Y118.921 E0.34804
G1 X113.295 Y119.226 E0.36659
G1 X113.206 Y119.506 E0.38395
G1 X113.097 Y119.771 E0.40088
G1 X112.951 Y120.06 E0.42002
G1 X112.855 Y120.221 E0.4311
G1 X112.622 Y120.55 E0.45492
G1 X112.364 Y120.845 E0.47808
G1 X112.219 Y120.987 E0.49007
G1 X112.075 Y121.113 E0.50138
G1 X111.922 Y121.234 E0.51291
G1 X111.744 Y121.36 E0.5258
G1 X111.615 Y121.441 E0.5348
G1 X111.416 Y121.553 E0.54829
G1 X111.234 Y121.643 E0.56029
G1 X111.045 Y121.724 E0.57244
G1 X110.502 Y121.925 E0.60666
G1 X115.8 Y128.578 E1.10925
G1 X116.184 Y128.425 E1.13367
G1 X115.614 Y122.986 E1.45685
G1 X115.625 Y122.733 E1.47182
G1 X115.657 Y122.554 E1.48256
G1 X115.707 Y122.38 E1.49326
G1 X115.818 Y122.131 E1.50937
G1 X115.874 Y122.035 E1.51594
G1 X116.03 Y121.828 E1.53126
G1 X116.112 Y121.739 E1.53841
G1 X116.208 Y121.651 E1.5461
G1 X116.303 Y121.577 E1.55322
G1 X116.523 Y121.441 E1.56851
G1 X116.633 Y121.388 E1.57572
G1 X116.869 Y121.308 E1.59045
G1 X117.007 Y121.277 E1.59881
G1 X117.109 Y121.263 E1.60489
G1 X120.279 Y120.926 E1.79328
G1 X123.723 Y115.488 E2.17366
G1 X123.871 Y115.243 E2.19058
G1 X124.132 Y114.741 E2.22401
G1 X124.248 Y114.475 E2.24116
G1 X124.352 Y114.21 E2.25798
G1 X124.445 Y113.938 E2.27497
G1 X124.526 Y113.663 E2.29191
G1 X124.596 Y113.386 E2.3088
G1 X124.653 Y113.105 E2.32574
G1 X124.699 Y112.823 E2.34263
G1 X124.732 Y112.538 E2.35958
G1 X124.753 Y112.251 E2.37659
G1 X124.762 Y111.834 E2.40123
G1 X124.744 Y111.397 E2.42708
G1 X124.716 Y111.106 E2.44436
G1 X124.625 Y110.546 E2.47788
G1 X124.56 Y110.263 E2.49504
G1 X124.445 Y109.863 E2.51964
G1 X124.299 Y109.447 E2.54569
G1 X124.133 Y109.063 E2.57041
G1 X123.934 Y108.669 E2.5965
G1 X123.721 Y108.31 E2.62117
G1 X123.473 Y107.943 E2.64734
G1 X123.12 Y107.499 E2.68086
G1 X122.923 Y107.282 E2.69818
G1 X122.514 Y106.886 E2.73182
G1 X122.073 Y106.524 E2.76554
G1 X121.838 Y106.357 E2.78258
G1 X121.599 Y106.2 E2.79948
G1 X121.353 Y106.053 E2.81641
G1 X121.1 Y105.917 E2.83339
G1 X120.841 Y105.793 E2.85035
G1 X120.579 Y105.681 E2.86719
G1 X120.312 Y105.577 E2.88413
G1 X120.039 Y105.486 E2.90113
G1 X119.764 Y105.408 E2.91802
G1 X119.487 Y105.34 E2.93488
G1 X119.206 Y105.285 E2.9518
G1 X118.924 Y105.241 E2.96867
G1 X118.637 Y105.21 E2.98573
G1 X118.351 Y105.191 E3.00266
G1 X117.933 Y105.185 E3.02737
G1 X117.492 Y105.207 E3.05346
G1 X116.928 Y105.279 E3.08706
G1 X116.643 Y105.332 E3.10419
G1 X116.237 Y105.433 E3.12892
G1 X115.82 Y105.565 E3.15476
G1 X115.547 Y105.667 E3.17199
G1 X115.03 Y105.9 E3.2055
G1 X114.775 Y106.036 E3.22258
G1 X114.525 Y106.183 E3.23971
G1 X114.054 Y106.5 E3.27326
G1 X113.726 Y106.761 E3.29804
G1 X113.399 Y107.054 E3.32398
G1 X113.196 Y107.257 E3.34095
G1 X113.001 Y107.468 E3.35793
G1 X112.815 Y107.69 E3.37504
G1 X112.479 Y108.146 E3.40851
G1 X112.322 Y108.389 E3.42561
G1 X112.177 Y108.638 E3.44264
G1 X112.044 Y108.89 E3.45948
G1 X111.921 Y109.15 E3.47647
G1 X111.81 Y109.413 E3.49334
G1 X111.71 Y109.682 E3.5103
G1 X111.621 Y109.954 E3.52722
G1 X111.544 Y110.229 E3.54409
G1 X111.478 Y110.508 E3.56103
G1 X111.425 Y110.789 E3.57793
G1 X111.383 Y111.072 E3.59484
G1 X111.354 Y111.357 E3.61177
G1 X111.337 Y111.643 E3.6287
G1 X111.332 Y111.93 E3.64566
G1 X111.347 Y112.346 E3.67026
G1 X111.372 Y112.635 E3.6874
G1 X111.429 Y113.024 E3.71064
G0 F850.8 X111.435 Y113.069
G0 X111.52 Y113.478
G1 F3000 E-3.28936
G0 F6000 X112.357 Y115.483
G1 F3000 E3.71064
G1 F945.4 X112.216 Y115.249 E3.72678
G1 X112.085 Y115.01 E3.74289
G1 X111.967 Y114.773 E3.75853
G1 X111.853 Y114.515 E3.7752
G1 X111.75 Y114.26 E3.79145
G1 X111.659 Y114.002 E3.80762
G1 X111.58 Y113.742 E3.82368
G1 X111.512 Y113.484 E3.83945
G1 X111.452 Y113.21 E3.85602
G1 X111.409 Y112.978 E3.86997
G1 X111.367 Y112.669 E3.88839
G1 X111.341 Y112.397 E3.90454
G1 X111.326 Y112.127 E3.92052
G1 X111.325 Y111.739 E3.94345
G1 X111.349 Y111.305 E3.96914
G1 X111.418 Y110.769 E4.00107
G1 X111.53 Y110.239 E4.03309
G1 X111.601 Y109.982 E4.04884
G1 X111.786 Y109.447 E4.08229
G1 X111.888 Y109.199 E4.09814
G1 X112.061 Y108.837 E4.12185
G1 X112.256 Y108.481 E4.14584
G1 X112.555 Y108.018 E4.17841
G1 X112.725 Y107.789 E4.19526
G1 X113.074 Y107.371 E4.22744
G1 X113.257 Y107.18 E4.24307
G1 X113.455 Y106.987 E4.25941
G1 X113.64 Y106.82 E4.27414
G1 X113.892 Y106.612 E4.29345
G1 X114.308 Y106.31 E4.32383
G1 X114.546 Y106.158 E4.34052
G1 X114.774 Y106.024 E4.35615
G1 X115.016 Y105.896 E4.37232
G1 X115.263 Y105.778 E4.3885
G1 X115.522 Y105.667 E4.40515
G1 X115.789 Y105.565 E4.42204
G1 X116.036 Y105.483 E4.43742
G1 X116.299 Y105.406 E4.45362
G1 X116.567 Y105.339 E4.46994
G1 X116.826 Y105.286 E4.48556
G1 X117.078 Y105.244 E4.50066
G1 X117.368 Y105.209 E4.51792
G1 X117.639 Y105.187 E4.53399
G1 X117.917 Y105.176 E4.55043
G1 X118.32 Y105.181 E4.57425
G1 X118.726 Y105.209 E4.5983
G1 X119.128 Y105.263 E4.62227
G1 X119.542 Y105.343 E4.64719
G1 X119.935 Y105.446 E4.6712
G1 X120.35 Y105.581 E4.69699
G1 X120.696 Y105.719 E4.719
G1 X121.084 Y105.899 E4.74427
G1 X121.555 Y106.162 E4.77615
G1 X122.024 Y106.476 E4.80951
G1 X122.229 Y106.632 E4.82473
G1 X122.641 Y106.987 E4.85687
G1 X123.028 Y107.381 E4.88951
G1 X123.379 Y107.802 E4.9219
G1 X123.544 Y108.025 E4.93829
G1 X123.691 Y108.241 E4.95373
G1 X123.835 Y108.477 E4.97007
G1 X123.974 Y108.723 E4.98677
G1 X124.111 Y108.992 E5.0046
G1 X124.209 Y109.205 E5.01846
G1 X124.317 Y109.466 E5.03515
G1 X124.408 Y109.714 E5.05076
G1 X124.501 Y110.009 E5.06904
G1 X124.564 Y110.238 E5.08308
G1 X124.626 Y110.504 E5.09922
G1 X124.679 Y110.782 E5.11594
G1 X124.714 Y111.013 E5.12975
G1 X124.747 Y111.324 E5.14823
G1 X124.765 Y111.585 E5.16369
G1 X124.771 Y111.988 E5.18751
G1 X124.762 Y112.269 E5.20412
G1 X124.725 Y112.7 E5.22969
G1 X124.669 Y113.073 E5.25198
G1 X124.583 Y113.484 E5.27679
G1 X124.473 Y113.88 E5.30108
G1 X124.341 Y114.271 E5.32547
G1 X124.189 Y114.636 E5.34883
G1 X123.998 Y115.03 E5.37471
G1 X123.73 Y115.497 E5.40652
G1 X120.287 Y120.937 E5.78698
G1 X116.975 Y121.292 E5.98382
G1 X116.698 Y121.373 E6.00088
G1 X116.502 Y121.463 E6.01362
G1 X116.309 Y121.584 E6.02708
G1 X116.095 Y121.769 E6.0438
G1 X115.989 Y121.888 E6.05322
G1 X115.834 Y122.12 E6.06971
G1 X115.765 Y122.258 E6.07882
G1 X115.713 Y122.393 E6.08737
G1 X115.67 Y122.533 E6.09603
G1 X115.643 Y122.676 E6.10463
G1 X115.625 Y122.828 E6.11367
G1 X115.63 Y123.102 E6.12987
G1 X116.274 Y129.19 E6.49164
G1 X110.462 Y121.891 E7.04302
G1 X110.713 Y121.828 E7.05831
G1 X111.029 Y121.721 E7.07803
G1 X111.234 Y121.633 E7.09121
G1 X111.613 Y121.432 E7.11656
G1 X111.968 Y121.187 E7.14205
G1 X112.14 Y121.044 E7.15527
G1 X112.367 Y120.827 E7.17383
G1 X112.588 Y120.579 E7.19346
G1 X112.721 Y120.404 E7.20645
G1 X112.842 Y120.224 E7.21927
G1 X112.953 Y120.036 E7.23217
G1 X113.053 Y119.845 E7.24491
G1 X113.141 Y119.645 E7.25782
G1 X113.218 Y119.443 E7.2706
G1 X113.283 Y119.236 E7.28342
G1 X113.337 Y119.025 E7.29629
G1 X113.377 Y118.812 E7.30909
G1 X113.407 Y118.597 E7.32192
G1 X113.423 Y118.378 E7.3349
G1 X113.424 Y118.063 E7.35351
G1 X113.397 Y117.73 E7.37326
G1 X113.343 Y117.418 E7.39197
G1 X113.26 Y117.093 E7.41179
G1 X113.153 Y116.794 E7.43056
G1 X113.014 Y116.489 E7.45037
G1 X112.798 Y116.119 E7.47568
G1 X112.508 Y115.712 E7.50522
G1 X112.357 Y115.483 E7.52143
;TIME_ELAPSED:13.097331
G1 F3000 E0.52143
M140 S0
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positionning

G1 X0 Y235 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

M82 ;absolute extrusion mode
M104 S0
;End of Gcode
;SETTING_3 {"global_quality": "[general]\\nversion = 4\\nname = PLA Geeetech\\nd
;SETTING_3 efinition = creality_ender3\\n\\n[metadata]\\nquality_type = standard
;SETTING_3 \\ntype = quality_changes\\nsetting_version = 10\\n\\n[values]\\nadhe
;SETTING_3 sion_type = none\\nlayer_height = 0.2\\nlayer_height_0 = 0.3\\nmateri
;SETTING_3 al_bed_temperature = 60\\nretraction_combing = noskin\\nsupport_tree_
;SETTING_3 enable = False\\nsupport_type = buildplate\\n\\n", "extruder_quality"
;SETTING_3 : ["[general]\\nversion = 4\\nname = PLA Geeetech\\ndefinition = crea
;SETTING_3 lity_ender3\\n\\n[metadata]\\nsetting_version = 10\\nquality_type = s
;SETTING_3 tandard\\ntype = quality_changes\\nposition = 0\\nintent_category = d
;SETTING_3 efault\\n\\n[values]\\nbottom_layers = 3\\nbrim_line_count = 2\\nbrim
;SETTING_3 _width = 2\\ncoasting_enable = True\\ncool_fan_full_at_height = =laye
;SETTING_3 r_height_0 + 2 * layer_height\\ncool_fan_speed = 100\\ninfill_enable_
;SETTING_3 travel_optimization = True\\ninfill_multiplier = 1\\ninfill_sparse_de
;SETTING_3 nsity = 30\\ninitial_layer_line_width_factor = 115\\nironing_enabled 
;SETTING_3 = True\\nironing_only_highest_layer = True\\nline_width = =machine_no
;SETTING_3 zzle_size\\nmaterial_flow = 100\\nmaterial_flow_layer_0 = 103\\nmater
;SETTING_3 ial_print_temperature = 200\\nmaterial_print_temperature_layer_0 = 21
;SETTING_3 0\\nraft_airgap = 0.15\\nraft_margin = 3\\nraft_surface_layers = 3\\n
;SETTING_3 retraction_amount = 7\\nretraction_extra_prime_amount = 0\\nretractio
;SETTING_3 n_hop = 0.25\\nretraction_hop_enabled = True\\nretraction_min_travel 
;SETTING_3 = 1\\nretraction_speed = 50\\nskirt_gap = 5\\nskirt_line_count = 2\\n
;SETTING_3 speed_print = 50\\nspeed_travel = =150.0 if speed_print < 60 else 250
;SETTING_3 .0 if speed_print > 100 else speed_print * 2.5\\nspeed_travel_layer_0
;SETTING_3  = =100 if speed_layer_0 < 20 else 150 if speed_layer_0 > 30 else spe
;SETTING_3 ed_layer_0 * 5\\nsupport_angle = 55\\nsupport_use_towers = True\\ntop
;SETTING_3 _layers = 4\\nwall_line_count = 2\\nxy_offset = -0.05\\nz_seam_corner
;SETTING_3  = z_seam_corner_weighted\\nz_seam_type = random\\nzig_zaggify_infill
;SETTING_3  = True\\n\\n"]}
