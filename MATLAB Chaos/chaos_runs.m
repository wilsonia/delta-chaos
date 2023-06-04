clear workspace;
run network_geometry;
run network_params;

load chaotic_base % set parameters for chaotic delta
timesteps=400000;
slope_perturb_amp = 0;
init_perturb_amp = 0;

run network_initialize;
run network_mainfile

save eta_base

for file=1:10
    clear workspace;
    run network_geometry;
    run network_params;
    
    load chaotic_base % set parameters for chaotic delta
    timesteps=400000;
    slope_perturb_amp = 0;
    init_perturb_amp = 0;
    
    run network_initialize;
    run network_mainfile
    
    filename = strcat('eta_perturbed/', int2str(file));
    filename
    save(filename);
end

