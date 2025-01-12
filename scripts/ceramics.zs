//makes chisel categories for ceramics
//bricks
mods.chisel.Carving.addGroup("ceramics_bricks");
mods.chisel.Carving.addVariation("ceramics_bricks", <ceramics:clay_hard>);

val ceramics_bricks = <ceramics:clay_hard>.definition;

for i in 1 to 8{
recipes.remove(ceramics_bricks.makeStack(i));
furnace.remove(ceramics_bricks.makeStack(i));
mods.chisel.Carving.addVariation("ceramics_bricks", ceramics_bricks.makeStack(i));
}


//porcelain
mods.chisel.Carving.addGroup("ceramics_porcelain");
//mods.chisel.Carving.addVariation("ceramics_porcelain", <ceramics:porcelain>);

val ceramics_porcelain = <ceramics:porcelain>.definition;

for i in 0 to 16{
recipes.remove(ceramics_porcelain.makeStack(i));
mods.chisel.Carving.addVariation("ceramics_porcelain", ceramics_porcelain.makeStack(i));
}

//ceramics_rainbow_porcelain
mods.chisel.Carving.addGroup("ceramics_rainbow_porcelain");
mods.chisel.Carving.addVariation("ceramics_rainbow_porcelain", <ceramics:rainbow_clay>);
recipes.removeByRecipeName("ceramics:decoration/rainbow_clay/red_swap");


val ceramics_rainbow_porcelain = <ceramics:rainbow_clay>.definition;

for i in 1 to 8{
recipes.remove(ceramics_rainbow_porcelain.makeStack(i));
mods.chisel.Carving.addVariation("ceramics_rainbow_porcelain", ceramics_rainbow_porcelain.makeStack(i));
}