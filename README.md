# Chaos in River Deltas

## Getting chaotic model runs

This project uses [Salter et al's river delta model](
https://github.com/salterg/bifurcation_network) built in MATLAB and published [here](https://www.pnas.org/doi/10.1073/pnas.2010416117).

The model has a few bugs out of the box that are addressed in our fork in the [bifurcation_network](bifurcation_network) directory. We also modified the workflow to accommodate successive model runs. [chaos_runs.m](bifurcation_network/chaos_runs.m) now serves as the mainfile, which:
- Configures the parameters for a chaotic delta (as suggested by column 1 of Table S1 in the publication's Appendix)
- Generates a base trajectory, and then several more with initial conditions perturbed from those of the base trajectory. The perturbation is applied to bed elevations in the form of white noise with amplitude $2*10^{-4}$

Potential future work is reproducing this model in Python notebooks with more accessible documentation.

## Analyzing model runs

After getting the model runs, we analyze them in Jupyter notebooks. See [demonstrating_chaos](demonstrating_chaos) and [delta_lyapunov_exponent](delta_lyapunov_exponent).

## Workflow
### Demonstrating chaos in Salter et al's model
  1. Run [chaos_runs.m](MATLAB_Chaos/chaos_runs.m)
  2. Move the generated `eta_base.m` and `eta_perturbed.m` to the [demonstrating_chaos](demonstrating_chaos) directory
  3. Run the Jupyter notebook in that directory

### Finding an estimated Lyapunov exponent for a delta
  1. Run [chaos_runs.m](bifurcation_network/chaos_runs.m)
  2. Move the generated `chaos_run.m` and the `eta_perturbed` *directory* to the [delta_lyapunov_exponent](delta_lyapunov_exponent) directory
  3. Run the Jupyter notebook in that directory
