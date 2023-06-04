for amp_i=1:30

    clear workspace;
    run network_geometry;
    run network_params;

    load chaotic_base % set parameters for chaotic delta
    timesteps=400000;
    perturb_amp = 2*10^-4 + .0004*amp_i;
    slope_perturb_amp = 0;
    init_perturb_amp = 0;

    run network_initialize;
    run network_mainfile

    save 'varying_amplitude/eta_base'

    for file=1:10
        clear workspace;
        run network_geometry;
        run network_params;

        load chaotic_base % set parameters for chaotic delta
        timesteps=400000;
        perturb_amp = 2*10^-4 + .0004*amp_i;
        slope_perturb_amp = 0;
        init_perturb_amp = 0;

        run network_initialize;
        run network_mainfile

        filename = strcat(strcat(strcat('varying_amplitude/eta_perturbed/', int2str(amp_i), '/'), int2str(file)));
        save(filename);
    end
end