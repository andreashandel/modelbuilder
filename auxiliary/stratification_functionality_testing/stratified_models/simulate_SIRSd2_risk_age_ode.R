#' SIRSd2_risk_age
#' 
#' @description A SIRSd model with 3 compartments. Processes are infection, recovery, births deaths and waning immunity.
#' 
#' @details The model includes susceptible, infected, and recovered compartments. The processes which are modeled are infection, recovery, natural births and deaths and waning immunity.
#' 
#' This code was generated by the modelbuilder R package.  
#' The model is implemented as a set of ordinary differential equations using the deSolve package. 
#' The following R packages need to be loaded for the function to work: deSolve. 
#' 
#' Starting conditions for model variables 
#' @param Shc : starting value for Susceptible high risk children : numeric
#' @param Sha : starting value for Susceptible high risk adults : numeric
#' @param She : starting value for Susceptible high risk elderly : numeric
#' @param Slc : starting value for Susceptible low risk children : numeric
#' @param Sla : starting value for Susceptible low risk adults : numeric
#' @param Sle : starting value for Susceptible low risk elderly : numeric
#' @param Ihc : starting value for Infected high risk children : numeric
#' @param Iha : starting value for Infected high risk adults : numeric
#' @param Ihe : starting value for Infected high risk elderly : numeric
#' @param Ilc : starting value for Infected low risk children : numeric
#' @param Ila : starting value for Infected low risk adults : numeric
#' @param Ile : starting value for Infected low risk elderly : numeric
#' @param Rhc : starting value for Recovered high risk children : numeric
#' @param Rha : starting value for Recovered high risk adults : numeric
#' @param Rhe : starting value for Recovered high risk elderly : numeric
#' @param Rlc : starting value for Recovered low risk children : numeric
#' @param Rla : starting value for Recovered low risk adults : numeric
#' @param Rle : starting value for Recovered low risk elderly : numeric
#' Values for model parameters : numeric 
#' @param b_Shc_Ihc : infection rate, high risk, children : numeric
#' @param b_Shc_Iha : infection rate, high risk, children : numeric
#' @param b_Shc_Ihe : infection rate, high risk, children : numeric
#' @param b_Shc_Ilc : infection rate, high risk, children : numeric
#' @param b_Shc_Ila : infection rate, high risk, children : numeric
#' @param b_Shc_Ile : infection rate, high risk, children : numeric
#' @param w_Rhc : waning immunity rate, high risk, children : numeric
#' @param n : birth rate, high risk, children : numeric
#' @param mS_Shc : death rate of S, high risk, children : numeric
#' @param b_Sha_Ihc : infection rate, high risk, adults : numeric
#' @param b_Sha_Iha : infection rate, high risk, adults : numeric
#' @param b_Sha_Ihe : infection rate, high risk, adults : numeric
#' @param b_Sha_Ilc : infection rate, high risk, adults : numeric
#' @param b_Sha_Ila : infection rate, high risk, adults : numeric
#' @param b_Sha_Ile : infection rate, high risk, adults : numeric
#' @param w_Rha : waning immunity rate, high risk, adults : numeric
#' @param mS_Sha : death rate of S, high risk, adults : numeric
#' @param b_She_Ihc : infection rate, high risk, elderly : numeric
#' @param b_She_Iha : infection rate, high risk, elderly : numeric
#' @param b_She_Ihe : infection rate, high risk, elderly : numeric
#' @param b_She_Ilc : infection rate, high risk, elderly : numeric
#' @param b_She_Ila : infection rate, high risk, elderly : numeric
#' @param b_She_Ile : infection rate, high risk, elderly : numeric
#' @param w_Rhe : waning immunity rate, high risk, elderly : numeric
#' @param mS_She : death rate of S, high risk, elderly : numeric
#' @param b_Slc_Ihc : infection rate, low risk, children : numeric
#' @param b_Slc_Iha : infection rate, low risk, children : numeric
#' @param b_Slc_Ihe : infection rate, low risk, children : numeric
#' @param b_Slc_Ilc : infection rate, low risk, children : numeric
#' @param b_Slc_Ila : infection rate, low risk, children : numeric
#' @param b_Slc_Ile : infection rate, low risk, children : numeric
#' @param w_Rlc : waning immunity rate, low risk, children : numeric
#' @param mS_Slc : death rate of S, low risk, children : numeric
#' @param b_Sla_Ihc : infection rate, low risk, adults : numeric
#' @param b_Sla_Iha : infection rate, low risk, adults : numeric
#' @param b_Sla_Ihe : infection rate, low risk, adults : numeric
#' @param b_Sla_Ilc : infection rate, low risk, adults : numeric
#' @param b_Sla_Ila : infection rate, low risk, adults : numeric
#' @param b_Sla_Ile : infection rate, low risk, adults : numeric
#' @param w_Rla : waning immunity rate, low risk, adults : numeric
#' @param mS_Sla : death rate of S, low risk, adults : numeric
#' @param b_Sle_Ihc : infection rate, low risk, elderly : numeric
#' @param b_Sle_Iha : infection rate, low risk, elderly : numeric
#' @param b_Sle_Ihe : infection rate, low risk, elderly : numeric
#' @param b_Sle_Ilc : infection rate, low risk, elderly : numeric
#' @param b_Sle_Ila : infection rate, low risk, elderly : numeric
#' @param b_Sle_Ile : infection rate, low risk, elderly : numeric
#' @param w_Rle : waning immunity rate, low risk, elderly : numeric
#' @param mS_Sle : death rate of S, low risk, elderly : numeric
#' @param g_Ihc : recovery rate, high risk, children : numeric
#' @param mI_Ihc : death rate of I, high risk, children : numeric
#' @param g_Iha : recovery rate, high risk, adults : numeric
#' @param mI_Iha : death rate of I, high risk, adults : numeric
#' @param g_Ihe : recovery rate, high risk, elderly : numeric
#' @param mI_Ihe : death rate of I, high risk, elderly : numeric
#' @param g_Ilc : recovery rate, low risk, children : numeric
#' @param mI_Ilc : death rate of I, low risk, children : numeric
#' @param g_Ila : recovery rate, low risk, adults : numeric
#' @param mI_Ila : death rate of I, low risk, adults : numeric
#' @param g_Ile : recovery rate, low risk, elderly : numeric
#' @param mI_Ile : death rate of I, low risk, elderly : numeric
#' @param mR_Rhc : death rate of R, high risk, children : numeric
#' @param mR_Rha : death rate of R, high risk, adults : numeric
#' @param mR_Rhe : death rate of R, high risk, elderly : numeric
#' @param mR_Rlc : death rate of R, low risk, children : numeric
#' @param mR_Rla : death rate of R, low risk, adults : numeric
#' @param mR_Rle : death rate of R, low risk, elderly : numeric
#' Values for model times : numeric 
#' @param tstart : Start time of simulation : numeric
#' @param tfinal : Final time of simulation : numeric
#' @param dt : Time step : numeric
#' @return The function returns the output as a list. 
#' The time-series from the simulation is returned as a dataframe saved as list element \code{ts}. 
#' The \code{ts} dataframe has one column per compartment/variable. The first column is time.   
#' @examples  
#' # To run the simulation with default parameters:  
#' result <- simulate_SIRSd2_risk_age_ode() 
#' # To choose values other than the standard one, specify them like this:  
#' result <- simulate_SIRSd2_risk_age_ode(Shc = 2000,Sha = 2000,She = 2000,Slc = 2000,Sla = 2000,Sle = 2000,Ihc = 2,Iha = 2,Ihe = 2,Ilc = 2,Ila = 2,Ile = 2,Rhc = 0,Rha = 0,Rhe = 0,Rlc = 0,Rla = 0,Rle = 0) 
#' # You can display or further process the result, like this:  
#' plot(result$ts[,'time'],result$ts[,'Shc'],xlab='Time',ylab='Numbers',type='l') 
#' print(paste('Max number of Shc: ',max(result$ts[,'Shc']))) 
#' @section Warning: This function does not perform any error checking. So if you try to do something nonsensical (e.g. have negative values for parameters), the code will likely abort with an error message.
#' @section Model Author: Andreas Handel
#' @section Model creation date: 18535
#' @section Code Author: generated by the \code{modelbuilder} R package 
#' @section Code creation date: 2020-09-30
#' @export 
 
simulate_SIRSd2_risk_age_ode <- function(Shc = 1000, Sha = 1000, She = 1000, Slc = 1000, Sla = 1000, Sle = 1000, Ihc = 1, Iha = 1, Ihe = 1, Ilc = 1, Ila = 1, Ile = 1, Rhc = 0, Rha = 0, Rhe = 0, Rlc = 0, Rla = 0, Rle = 0, b_Shc_Ihc = 0.002, b_Shc_Iha = 0.002, b_Shc_Ihe = 0.002, b_Shc_Ilc = 0.002, b_Shc_Ila = 0.002, b_Shc_Ile = 0.002, w_Rhc = 1, n = 0, mS_Shc = 0, b_Sha_Ihc = 0.002, b_Sha_Iha = 0.002, b_Sha_Ihe = 0.002, b_Sha_Ilc = 0.002, b_Sha_Ila = 0.002, b_Sha_Ile = 0.002, w_Rha = 1, mS_Sha = 0, b_She_Ihc = 0.002, b_She_Iha = 0.002, b_She_Ihe = 0.002, b_She_Ilc = 0.002, b_She_Ila = 0.002, b_She_Ile = 0.002, w_Rhe = 1, mS_She = 0, b_Slc_Ihc = 0.002, b_Slc_Iha = 0.002, b_Slc_Ihe = 0.002, b_Slc_Ilc = 0.002, b_Slc_Ila = 0.002, b_Slc_Ile = 0.002, w_Rlc = 1, mS_Slc = 0, b_Sla_Ihc = 0.002, b_Sla_Iha = 0.002, b_Sla_Ihe = 0.002, b_Sla_Ilc = 0.002, b_Sla_Ila = 0.002, b_Sla_Ile = 0.002, w_Rla = 1, mS_Sla = 0, b_Sle_Ihc = 0.002, b_Sle_Iha = 0.002, b_Sle_Ihe = 0.002, b_Sle_Ilc = 0.002, b_Sle_Ila = 0.002, b_Sle_Ile = 0.002, w_Rle = 1, mS_Sle = 0, g_Ihc = 1, mI_Ihc = 0, g_Iha = 1, mI_Iha = 0, g_Ihe = 1, mI_Ihe = 0, g_Ilc = 1, mI_Ilc = 0, g_Ila = 1, mI_Ila = 0, g_Ile = 1, mI_Ile = 0, mR_Rhc = 0, mR_Rha = 0, mR_Rhe = 0, mR_Rlc = 0, mR_Rla = 0, mR_Rle = 0, tstart = 0, tfinal = 100, dt = 0.1) 
{ 
  ############################## 
  #Block of ODE equations for deSolve 
  ############################## 
  SIRSd2_risk_age_ode_fct <- function(t, y, parms) 
  {
    with( as.list(c(y,parms)), { #lets us access variables and parameters stored in y and parms by name 
    #StartODES
    #Susceptible high risk children : infection, high risk, children : infection, high risk, children : infection, high risk, children : infection, high risk, children : infection, high risk, children : infection, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : births, high risk, children : births, high risk, children : births, high risk, children : births, high risk, children : births, high risk, children : births, high risk, children : natural deaths of S, high risk, children : natural deaths of S, high risk, children : natural deaths of S, high risk, children : natural deaths of S, high risk, children : natural deaths of S, high risk, children : natural deaths of S, high risk, children :
    dShc_mb = -b_Shc_Ihc*Shc*Ihc -b_Shc_Iha*Shc*Iha -b_Shc_Ihe*Shc*Ihe -b_Shc_Ilc*Shc*Ilc -b_Shc_Ila*Shc*Ila -b_Shc_Ile*Shc*Ile +w_Rhc*Rhc +n -mS_Shc*Shc
    #Susceptible high risk adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : births, high risk, adults : births, high risk, adults : births, high risk, adults : births, high risk, adults : births, high risk, adults : births, high risk, adults : natural deaths of S, high risk, adults : natural deaths of S, high risk, adults : natural deaths of S, high risk, adults : natural deaths of S, high risk, adults : natural deaths of S, high risk, adults : natural deaths of S, high risk, adults :
    dSha_mb = -b_Sha_Ihc*Sha*Ihc -b_Sha_Iha*Sha*Iha -b_Sha_Ihe*Sha*Ihe -b_Sha_Ilc*Sha*Ilc -b_Sha_Ila*Sha*Ila -b_Sha_Ile*Sha*Ile +w_Rha*Rha +n -mS_Sha*Sha
    #Susceptible high risk elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : births, high risk, elderly : births, high risk, elderly : births, high risk, elderly : births, high risk, elderly : births, high risk, elderly : births, high risk, elderly : natural deaths of S, high risk, elderly : natural deaths of S, high risk, elderly : natural deaths of S, high risk, elderly : natural deaths of S, high risk, elderly : natural deaths of S, high risk, elderly : natural deaths of S, high risk, elderly :
    dShe_mb = -b_She_Ihc*She*Ihc -b_She_Iha*She*Iha -b_She_Ihe*She*Ihe -b_She_Ilc*She*Ilc -b_She_Ila*She*Ila -b_She_Ile*She*Ile +w_Rhe*Rhe +n -mS_She*She
    #Susceptible low risk children : infection, low risk, children : infection, low risk, children : infection, low risk, children : infection, low risk, children : infection, low risk, children : infection, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : births, low risk, children : births, low risk, children : births, low risk, children : births, low risk, children : births, low risk, children : births, low risk, children : natural deaths of S, low risk, children : natural deaths of S, low risk, children : natural deaths of S, low risk, children : natural deaths of S, low risk, children : natural deaths of S, low risk, children : natural deaths of S, low risk, children :
    dSlc_mb = -b_Slc_Ihc*Slc*Ihc -b_Slc_Iha*Slc*Iha -b_Slc_Ihe*Slc*Ihe -b_Slc_Ilc*Slc*Ilc -b_Slc_Ila*Slc*Ila -b_Slc_Ile*Slc*Ile +w_Rlc*Rlc +n -mS_Slc*Slc
    #Susceptible low risk adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : births, low risk, adults : births, low risk, adults : births, low risk, adults : births, low risk, adults : births, low risk, adults : births, low risk, adults : natural deaths of S, low risk, adults : natural deaths of S, low risk, adults : natural deaths of S, low risk, adults : natural deaths of S, low risk, adults : natural deaths of S, low risk, adults : natural deaths of S, low risk, adults :
    dSla_mb = -b_Sla_Ihc*Sla*Ihc -b_Sla_Iha*Sla*Iha -b_Sla_Ihe*Sla*Ihe -b_Sla_Ilc*Sla*Ilc -b_Sla_Ila*Sla*Ila -b_Sla_Ile*Sla*Ile +w_Rla*Rla +n -mS_Sla*Sla
    #Susceptible low risk elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : births, low risk, elderly : births, low risk, elderly : births, low risk, elderly : births, low risk, elderly : births, low risk, elderly : births, low risk, elderly : natural deaths of S, low risk, elderly : natural deaths of S, low risk, elderly : natural deaths of S, low risk, elderly : natural deaths of S, low risk, elderly : natural deaths of S, low risk, elderly : natural deaths of S, low risk, elderly :
    dSle_mb = -b_Sle_Ihc*Sle*Ihc -b_Sle_Iha*Sle*Iha -b_Sle_Ihe*Sle*Ihe -b_Sle_Ilc*Sle*Ilc -b_Sle_Ila*Sle*Ila -b_Sle_Ile*Sle*Ile +w_Rle*Rle +n -mS_Sle*Sle
    #Infected high risk children : infection, high risk, children : infection, high risk, children : infection, high risk, children : infection, high risk, children : infection, high risk, children : infection, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : natural deaths of I, high risk, children : natural deaths of I, high risk, children : natural deaths of I, high risk, children : natural deaths of I, high risk, children : natural deaths of I, high risk, children : natural deaths of I, high risk, children :
    dIhc_mb = +b_Shc_Ihc*Shc*Ihc +b_Shc_Iha*Shc*Iha +b_Shc_Ihe*Shc*Ihe +b_Shc_Ilc*Shc*Ilc +b_Shc_Ila*Shc*Ila +b_Shc_Ile*Shc*Ile -g_Ihc*Ihc -mI_Ihc*Ihc
    #Infected high risk adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : infection, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : natural deaths of I, high risk, adults : natural deaths of I, high risk, adults : natural deaths of I, high risk, adults : natural deaths of I, high risk, adults : natural deaths of I, high risk, adults : natural deaths of I, high risk, adults :
    dIha_mb = +b_Sha_Ihc*Sha*Ihc +b_Sha_Iha*Sha*Iha +b_Sha_Ihe*Sha*Ihe +b_Sha_Ilc*Sha*Ilc +b_Sha_Ila*Sha*Ila +b_Sha_Ile*Sha*Ile -g_Iha*Iha -mI_Iha*Iha
    #Infected high risk elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : infection, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : natural deaths of I, high risk, elderly : natural deaths of I, high risk, elderly : natural deaths of I, high risk, elderly : natural deaths of I, high risk, elderly : natural deaths of I, high risk, elderly : natural deaths of I, high risk, elderly :
    dIhe_mb = +b_She_Ihc*She*Ihc +b_She_Iha*She*Iha +b_She_Ihe*She*Ihe +b_She_Ilc*She*Ilc +b_She_Ila*She*Ila +b_She_Ile*She*Ile -g_Ihe*Ihe -mI_Ihe*Ihe
    #Infected low risk children : infection, low risk, children : infection, low risk, children : infection, low risk, children : infection, low risk, children : infection, low risk, children : infection, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : natural deaths of I, low risk, children : natural deaths of I, low risk, children : natural deaths of I, low risk, children : natural deaths of I, low risk, children : natural deaths of I, low risk, children : natural deaths of I, low risk, children :
    dIlc_mb = +b_Slc_Ihc*Slc*Ihc +b_Slc_Iha*Slc*Iha +b_Slc_Ihe*Slc*Ihe +b_Slc_Ilc*Slc*Ilc +b_Slc_Ila*Slc*Ila +b_Slc_Ile*Slc*Ile -g_Ilc*Ilc -mI_Ilc*Ilc
    #Infected low risk adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : infection, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : natural deaths of I, low risk, adults : natural deaths of I, low risk, adults : natural deaths of I, low risk, adults : natural deaths of I, low risk, adults : natural deaths of I, low risk, adults : natural deaths of I, low risk, adults :
    dIla_mb = +b_Sla_Ihc*Sla*Ihc +b_Sla_Iha*Sla*Iha +b_Sla_Ihe*Sla*Ihe +b_Sla_Ilc*Sla*Ilc +b_Sla_Ila*Sla*Ila +b_Sla_Ile*Sla*Ile -g_Ila*Ila -mI_Ila*Ila
    #Infected low risk elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : infection, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : natural deaths of I, low risk, elderly : natural deaths of I, low risk, elderly : natural deaths of I, low risk, elderly : natural deaths of I, low risk, elderly : natural deaths of I, low risk, elderly : natural deaths of I, low risk, elderly :
    dIle_mb = +b_Sle_Ihc*Sle*Ihc +b_Sle_Iha*Sle*Iha +b_Sle_Ihe*Sle*Ihe +b_Sle_Ilc*Sle*Ilc +b_Sle_Ila*Sle*Ila +b_Sle_Ile*Sle*Ile -g_Ile*Ile -mI_Ile*Ile
    #Recovered high risk children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : recovery, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : waning immunity, high risk, children : natural deaths of R, high risk, children : natural deaths of R, high risk, children : natural deaths of R, high risk, children : natural deaths of R, high risk, children : natural deaths of R, high risk, children : natural deaths of R, high risk, children :
    dRhc_mb = +g_Ihc*Ihc -w_Rhc*Rhc -mR_Rhc*Rhc
    #Recovered high risk adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : recovery, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : waning immunity, high risk, adults : natural deaths of R, high risk, adults : natural deaths of R, high risk, adults : natural deaths of R, high risk, adults : natural deaths of R, high risk, adults : natural deaths of R, high risk, adults : natural deaths of R, high risk, adults :
    dRha_mb = +g_Iha*Iha -w_Rha*Rha -mR_Rha*Rha
    #Recovered high risk elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : recovery, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : waning immunity, high risk, elderly : natural deaths of R, high risk, elderly : natural deaths of R, high risk, elderly : natural deaths of R, high risk, elderly : natural deaths of R, high risk, elderly : natural deaths of R, high risk, elderly : natural deaths of R, high risk, elderly :
    dRhe_mb = +g_Ihe*Ihe -w_Rhe*Rhe -mR_Rhe*Rhe
    #Recovered low risk children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : recovery, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : waning immunity, low risk, children : natural deaths of R, low risk, children : natural deaths of R, low risk, children : natural deaths of R, low risk, children : natural deaths of R, low risk, children : natural deaths of R, low risk, children : natural deaths of R, low risk, children :
    dRlc_mb = +g_Ilc*Ilc -w_Rlc*Rlc -mR_Rlc*Rlc
    #Recovered low risk adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : recovery, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : waning immunity, low risk, adults : natural deaths of R, low risk, adults : natural deaths of R, low risk, adults : natural deaths of R, low risk, adults : natural deaths of R, low risk, adults : natural deaths of R, low risk, adults : natural deaths of R, low risk, adults :
    dRla_mb = +g_Ila*Ila -w_Rla*Rla -mR_Rla*Rla
    #Recovered low risk elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : recovery, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : waning immunity, low risk, elderly : natural deaths of R, low risk, elderly : natural deaths of R, low risk, elderly : natural deaths of R, low risk, elderly : natural deaths of R, low risk, elderly : natural deaths of R, low risk, elderly : natural deaths of R, low risk, elderly :
    dRle_mb = +g_Ile*Ile -w_Rle*Rle -mR_Rle*Rle
    #EndODES
    list(c(dShc_mb,dSha_mb,dShe_mb,dSlc_mb,dSla_mb,dSle_mb,dIhc_mb,dIha_mb,dIhe_mb,dIlc_mb,dIla_mb,dIle_mb,dRhc_mb,dRha_mb,dRhe_mb,dRlc_mb,dRla_mb,dRle_mb)) 
  } ) } #close with statement, end ODE code block 
 
  ############################## 
  #Main function code block 
  ############################## 
  #Creating named vectors 
  varvec_mb = c(Shc = Shc, Sha = Sha, She = She, Slc = Slc, Sla = Sla, Sle = Sle, Ihc = Ihc, Iha = Iha, Ihe = Ihe, Ilc = Ilc, Ila = Ila, Ile = Ile, Rhc = Rhc, Rha = Rha, Rhe = Rhe, Rlc = Rlc, Rla = Rla, Rle = Rle) 
  parvec_mb = c(b_Shc_Ihc = b_Shc_Ihc, b_Shc_Iha = b_Shc_Iha, b_Shc_Ihe = b_Shc_Ihe, b_Shc_Ilc = b_Shc_Ilc, b_Shc_Ila = b_Shc_Ila, b_Shc_Ile = b_Shc_Ile, w_Rhc = w_Rhc, n = n, mS_Shc = mS_Shc, b_Sha_Ihc = b_Sha_Ihc, b_Sha_Iha = b_Sha_Iha, b_Sha_Ihe = b_Sha_Ihe, b_Sha_Ilc = b_Sha_Ilc, b_Sha_Ila = b_Sha_Ila, b_Sha_Ile = b_Sha_Ile, w_Rha = w_Rha, mS_Sha = mS_Sha, b_She_Ihc = b_She_Ihc, b_She_Iha = b_She_Iha, b_She_Ihe = b_She_Ihe, b_She_Ilc = b_She_Ilc, b_She_Ila = b_She_Ila, b_She_Ile = b_She_Ile, w_Rhe = w_Rhe, mS_She = mS_She, b_Slc_Ihc = b_Slc_Ihc, b_Slc_Iha = b_Slc_Iha, b_Slc_Ihe = b_Slc_Ihe, b_Slc_Ilc = b_Slc_Ilc, b_Slc_Ila = b_Slc_Ila, b_Slc_Ile = b_Slc_Ile, w_Rlc = w_Rlc, mS_Slc = mS_Slc, b_Sla_Ihc = b_Sla_Ihc, b_Sla_Iha = b_Sla_Iha, b_Sla_Ihe = b_Sla_Ihe, b_Sla_Ilc = b_Sla_Ilc, b_Sla_Ila = b_Sla_Ila, b_Sla_Ile = b_Sla_Ile, w_Rla = w_Rla, mS_Sla = mS_Sla, b_Sle_Ihc = b_Sle_Ihc, b_Sle_Iha = b_Sle_Iha, b_Sle_Ihe = b_Sle_Ihe, b_Sle_Ilc = b_Sle_Ilc, b_Sle_Ila = b_Sle_Ila, b_Sle_Ile = b_Sle_Ile, w_Rle = w_Rle, mS_Sle = mS_Sle, g_Ihc = g_Ihc, mI_Ihc = mI_Ihc, g_Iha = g_Iha, mI_Iha = mI_Iha, g_Ihe = g_Ihe, mI_Ihe = mI_Ihe, g_Ilc = g_Ilc, mI_Ilc = mI_Ilc, g_Ila = g_Ila, mI_Ila = mI_Ila, g_Ile = g_Ile, mI_Ile = mI_Ile, mR_Rhc = mR_Rhc, mR_Rha = mR_Rha, mR_Rhe = mR_Rhe, mR_Rlc = mR_Rlc, mR_Rla = mR_Rla, mR_Rle = mR_Rle) 
  timevec_mb = seq(tstart, tfinal,by = dt) 
  #Running the model 
  simout = deSolve::ode(y = varvec_mb, parms = parvec_mb, times = timevec_mb,  func = SIRSd2_risk_age_ode_fct, rtol = 1e-12, atol = 1e-12) 
  #Setting up empty list and returning result as data frame called ts 
  result <- list() 
  result$ts <- as.data.frame(simout) 
  return(result) 
} 
