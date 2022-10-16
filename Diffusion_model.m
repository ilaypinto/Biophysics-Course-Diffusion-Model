function [Result] = Diffusion_model(compartments, particles, D, tmesh)

    % Define compartment grid:
    Result = zeros(1, compartments);

    % Put particles in the middle compartment:
    Result(round(compartments/2)) = particles;

    % Update compartments in each timestep, according to relevant equation:
    for i = tmesh(2:end)
        Result = Result + D*([Result(2:end-1), zeros(1,2)]+...
            [zeros(1,2),Result(2:end-1)]-2*Result);
    end
end