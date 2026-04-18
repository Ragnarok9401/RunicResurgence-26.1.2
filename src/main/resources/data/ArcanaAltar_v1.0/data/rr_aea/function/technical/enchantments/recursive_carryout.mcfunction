# Set 1
#region
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec1,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.3d,0.375d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL1_1_1","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec1,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.375d,0.3d],inGround:false,Tags:["ArenRecursionArrow","ArenPL1_1_2","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec1,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.3d,0.375d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL1_1_3","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec1,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.375d,-0.3d],inGround:false,Tags:["ArenRecursionArrow","ArenPL1_1_4","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
#endregion

# Set 2
#region
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec2,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.35d,0.29d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_1_1","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec2,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.29d,0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_1_2","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec2,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.35d,0.29d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_1_3","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec2,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.29d,-0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_1_4","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.35d,0.175d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_1","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.35d,0.1d,0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_2","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.35d,0.1d,-0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_3","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.175d,0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_4","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.35d,0.1d,0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_5","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.35d,0.1d,0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_6","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.35d,0.175d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_7","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.35d,0.1d,0.4d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_8","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.35d,0.1d,-0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_9","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.175d,-0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_10","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.35d,0.1d,-0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_11","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL2_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.35d,0.1d,-0.35d],inGround:false,Tags:["ArenRecursionArrow","ArenPL2_2_12","ArenPLSet","ArenPLSArrow","ArenPLDLow"],pickup:2b,crit:true}
#endregion

# Set 3
#region
# Remember for later:
# [0.5d,0.1d,0d]
# [0.4d,0.09d,0.4d]
# [0.4d,0.09d,-0.4d]

# [0d,0.1d,0.5d]
# [0.4d,0.09d,0.4d]
# [-0.4d,0.09d,0.4d]

# [-0.5d,0.1d,0d]
# [-0.4d,0.09d,0.4d]
# [-0.4d,0.09d,-0.4d]

# [0d,0.1d,-0.5d]
# [0.4d,0.09d,-0.4d]
# [-0.4d,0.09d,-0.4d]
# Motion values for faster arrows (short distance)

execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec3,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_1_1","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec3,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_1_2","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec3,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_1_3","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec3,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_1_4","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_1","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_2","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_3","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_4","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_5","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_6","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_7","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_8","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_9","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_10","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_11","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL3_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL3_2_12","ArenPLSet","ArenPLSArrow","ArenPLDMed"],pickup:2b,crit:true}

#endregion

# Set 4
#region
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_1","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_2","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_3","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_4","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_5","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_6","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_7","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec4,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_1_8","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_1","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_2","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_3","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_4","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_5","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_6","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_7","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_8","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_9","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_10","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_11","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL4_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.5d,0.085d,-0.5d],inGround:false,Tags:["ArenRecursionArrow","ArenPL4_2_12","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
#endregion

# Set 5
#region
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.575d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_1","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,0.575d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_2","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.575d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_3","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,-0.575d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_4","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_5","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_6","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.6d,0.1d,0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_7","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.6d,0.1d,-0.6d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_1_8","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=ArenRec5,tag=!payloadShot] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.5d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenRec4","ArenPL4_2_1","ArenPLMArrow","ArenPLSArrow","ArenPLSet","ArenPLUArrow"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.625d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_1","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.525d,0.085d,0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_2","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_1] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.525d,0.085d,-0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_3","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,0.625d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_4","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.525d,0.085d,0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_5","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_2] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.525d,0.085d,0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_6","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.625d,0.1d,0d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_7","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.525d,0.085d,0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_8","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_3] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.525d,0.085d,-0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_9","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}

execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0d,0.1d,-0.625d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_10","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[0.525d,0.085d,-0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_11","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
execute as @e[type=arrow,nbt={inGround:true},tag=!payloadShot,tag=ArenPL5_1_4] at @s run summon arrow ~ ~0.125 ~ {Motion:[-0.525d,0.085d,-0.525d],inGround:false,Tags:["ArenRecursionArrow","ArenPL5_2_12","ArenPLSet","ArenPLSArrow","ArenPLDHi"],pickup:2b,crit:true}
#endregion

# Set Owner to player who shot Mother arrow
execute as @e[type=arrow,tag=ArenRecursionArrow,nbt={inGround:false}] at @s unless data entity @s Owner run data modify entity @s Owner set from entity @e[type=arrow,tag=ArenRecursionArrow,nbt={inGround:true},limit=1,sort=nearest] Owner

# Copy Damage value from Mother arrow to inherit Power enchantment
execute as @e[type=arrow,tag=ArenRecursionArrow,nbt={inGround:false}] at @s run data modify entity @s damage set from entity @e[type=arrow,tag=ArenRecursionArrow,nbt={inGround:true},limit=1,sort=nearest] damage

# Apply Sun/Moonstruck to arrows summoned by Recursion levels 2-5
execute as @e[type=arrow,tag=ArenPL5_1_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_5,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_6,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_7,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_8,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_1_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_1_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_1_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_5,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_6,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_7,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_1_8,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_1_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_1_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2


execute as @e[type=arrow,tag=ArenPL5_2_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_5,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_6,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_7,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_8,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_9,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_9,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_9,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_10,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_10,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_10,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_11,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_11,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_11,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL5_2_12,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL5_2_12,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL5_2_12,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2


execute as @e[type=arrow,tag=ArenPL5_2_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_5,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_6,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_7,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_8,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_9,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_9,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_9,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_10,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_10,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_10,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_11,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_11,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_11,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL5_2_12,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL5_2_12,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL5_2_12,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2


execute as @e[type=arrow,tag=ArenPL4_1_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_5,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_6,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_7,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_8,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_1_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_1_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_1_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_5,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_6,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_7,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_1_8,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_1_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_1_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2


execute as @e[type=arrow,tag=ArenPL4_2_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_5,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_6,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_7,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_8,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_9,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_9,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_9,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_10,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_10,tag=RuniSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_10,tag=RuniSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_11,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_11,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_11,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_12,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL4_2_12,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL4_2_12,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL4_2_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_5,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_6,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_7,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_8,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_9,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_9,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_9,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_10,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_10,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_10,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_11,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_11,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_11,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL4_2_12,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL4_2_12,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL4_2_12,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2


execute as @e[type=arrow,tag=ArenPL3_1_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_1_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_1_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_1_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2


execute as @e[type=arrow,tag=ArenPL3_1_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_1_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_1_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_1_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2


execute as @e[type=arrow,tag=ArenPL3_2_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_5,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_5,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_6,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_6,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_7,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_7,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_8,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_8,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_9,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_9,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_9,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_10,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_10,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_10,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_11,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_11,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_11,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL3_2_12,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL3_2_12,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL3_2_12,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2



execute as @e[type=arrow,tag=ArenPL3_2_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_5,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_5,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_6,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_6,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_7,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_7,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_8,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_8,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_9,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_9,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_9,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_10,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_10,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_10,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_11,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_11,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_11,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL3_2_12,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL3_2_12,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL3_2_12,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2



execute as @e[type=arrow,tag=ArenPL2_1_1,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL2_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL2_1_1,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL2_1_2,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL2_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL2_1_2,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL2_1_3,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL2_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL2_1_3,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2

execute as @e[type=arrow,tag=ArenPL2_1_4,tag=!ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,distance=..1] run tag @s add ArenSunArrow
execute as @e[type=arrow,tag=ArenPL2_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow1,distance=..1] run tag @s add ArenSunArrow1
execute as @e[type=arrow,tag=ArenPL2_1_4,tag=ArenSunArrow,tag=!ArenSunArrow1,tag=!ArenSunArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenSunArrow,tag=ArenSunArrow2,distance=..1] run tag @s add ArenSunArrow2


execute as @e[type=arrow,tag=ArenPL2_1_1,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL2_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL2_1_1,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL2_1_2,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL2_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL2_1_2,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL2_1_3,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL2_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL2_1_3,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

execute as @e[type=arrow,tag=ArenPL2_1_4,tag=!ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,distance=..1] run tag @s add ArenMoonArrow
execute as @e[type=arrow,tag=ArenPL2_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow1,distance=..1] run tag @s add ArenMoonArrow1
execute as @e[type=arrow,tag=ArenPL2_1_4,tag=ArenMoonArrow,tag=!ArenMoonArrow1,tag=!ArenMoonArrow2] at @s if entity @e[type=arrow,limit=1,sort=nearest,nbt={inGround:true},tag=ArenMoonArrow,tag=ArenMoonArrow2,distance=..1] run tag @s add ArenMoonArrow2

kill @e[type=arrow,tag=ArenRecursionArrow,nbt={inGround:true}]