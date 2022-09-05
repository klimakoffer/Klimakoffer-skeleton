
"""
    compute_equilibrium!(max_years=100, rel_error=2e-5)

Function to run an EBM simulation until an equilibrium temperature is found
* max_years is the maximum number of annual cycles to be computed when searching for equilibrium
* rel_error is the tolerance for global temperature equilibrium (default is 2e-5).
"""
function compute_equilibrium!(max_years=100, rel_error=2e-5)
    
    # The right-hand side must be updated at every time step using the function
    # update_rhs!(rhs)
                        
    # return average_temperature
end

"""
    compute_matrix(mesh,num_steps_year,model)

Function to compute the system matrix of the EBM operator
"""
function compute_matrix(mesh,num_steps_year,model)
    
    # return matrix
end

"""
    update_rhs!(rhs, ...)

Function to compute/update right-hand side of the system of equations that needs to be solved
"""
function update_rhs!(rhs)
    
end
