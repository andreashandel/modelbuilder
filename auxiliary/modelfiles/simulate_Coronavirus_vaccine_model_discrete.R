#' Coronavirus vaccine model
#' 
#' @description A model with 7 compartments
#' 
#' @details The model includes susceptible, presymptomatic, asymptomatic, infected/symptomatic/ill, recovered, hospitalized, and deceased compartments. The processes that are modeled are infection, progression to infectiousness, recovery, and progression to hospitalization and death. Immunity is permanent. Demographics through natural births and deaths are not included.
#' 
#' This code was generated by the modelbuilder R package.  
#' The model is implemented as a set of discrete time equations using a for loop. 
 
#' The following R packages need to be loaded for the function to work: none 
#' 
#' @param S : starting value for Susceptible : numeric
#' @param P : starting value for Presymptomatic : numeric
#' @param A : starting value for Asymptomatic : numeric
#' @param I : starting value for Ill : numeric
#' @param H : starting value for Hospitalized : numeric
#' @param R : starting value for Recovered : numeric
#' @param D : starting value for Deceased : numeric
#' @param bP : transmission by presymptomatis : numeric
#' @param bA : transmission by asymptomatic : numeric
#' @param bI : transmission by ill : numeric
#' @param nu : fraction symptomatic : numeric
#' @param sigma : progression to symptomatic : numeric
#' @param gammaA : recovery of asymptomatic : numeric
#' @param gammaI : leaving the symptomatic class : numeric
#' @param gammaH : leaving the hospitalized class : numeric
#' @param phi : fraction of symptomatics hospitalized : numeric
#' @param rho : fraction of hospitalized deceased : numeric
#' @param n : population size : numeric
#' @param nuInverse : fraction asymptomatic : numeric
#' @param  :  : numeric
#' @param  :  : numeric
#' @param c : contact matrix : numeric
#' @param alpha : susceptibility of susceptibles : numeric
#' @param tstart : Start time of simulation : numeric
#' @param tfinal : Final time of simulation : numeric
#' @param dt : Time step : numeric
#' @return The function returns the output as a list. 
#' The time-series from the simulation is returned as a dataframe saved as list element \code{ts}. 
#' The \code{ts} dataframe has one column per compartment/variable. The first column is time.   
#' @examples  
#' # To run the simulation with default parameters:  
#' result <- simulate_Coronavirus_vaccine_model_discrete() 
#' # To choose values other than the standard one, specify them like this:  
#' result <- simulate_Coronavirus_vaccine_model_discrete(S = 2000,P = 2,A = 2,I = 2,H = 0,R = 0,D = 0) 
#' # You can display or further process the result, like this:  
#' plot(result$ts[,'time'],result$ts[,'S'],xlab='Time',ylab='Numbers',type='l') 
#' print(paste('Max number of S: ',max(result$ts[,'S']))) 
#' @section Warning: This function does not perform any error checking. So if you try to do something nonsensical (e.g. have negative values for parameters), the code will likely abort with an error message.
#' @section Model Author: COVAMOD consortium
#' @section Model creation date: 2020-09-29
#' @section Code Author: generated by the \code{modelbuilder} R package 
#' @section Code creation date: 2021-02-16
#' @export 
 
simulate_Coronavirus_vaccine_model_discrete <- function(S = 1000, P = 1, A = 1, I = 1, H = 0, R = 0, D = 0, bP = 0.001, bA = 5e-04, bI = 0.001, nu = 0.3, sigma = 0.2, gammaA = 0.125, gammaI = 0.1, gammaH = 0.2, phi = 0.05, rho = 0.01, n = 1003, nuInverse = 0.7,  = ,  = , c = 1, alpha = 1, tstart = 0, tfinal = 100, dt = 0.1) 
{ 
  #Function that encodes simulation loop 
  Coronavirus_vaccine_model_fct <- function(vars, pars, times) 
  {
    with( as.list(c(vars,pars)), {  
      ts = data.frame(cbind(times, matrix(0,nrow=length(times),ncol=length(vars)))) 
      colnames(ts) = c('time','S','P','A','I','H','R','D') 
      ct=1 #a counter to index array 
      for (t in times) 
      {
        ts[ct,] = c(t,S,P,A,I,H,R,D) 
        Sp = S + dt*(-nu*bP*S*P -(1-nu)*bP*S*P -nu*bA*S*A -(1-nu)*bA*S*A -nu*bI*S*I -(1-nu)*bI*S*I) 
        Pp = P + dt*(+nu*bP*S*P +nu*bA*S*A +nu*bI*S*I -sigma*P) 
        Ap = A + dt*(+(1-nu)*bP*S*P +(1-nu)*bA*S*A +(1-nu)*bI*S*I -gammaA*A) 
        Ip = I + dt*(+sigma*P -phi*gammaI*I -(1-phi)*gammaI*I) 
        Hp = H + dt*(+phi*gammaI*I -rho*gammaH*H -(1-rho)*gammaH*H) 
        Rp = R + dt*(+gammaA*A +(1-phi)*gammaI*I +(1-rho)*gammaH*H) 
        Dp = D + dt*(+rho*gammaH*H) 
        S = Sp 
        P = Pp 
        A = Ap 
        I = Ip 
        H = Hp 
        R = Rp 
        D = Dp 
        ct = ct + 1 
      } #finish loop 
      return(ts) 
    }) #close with statement 
 } #end function encoding loop 
 
  ############################## 
  #Main function code block 
  ############################## 
  #Creating named vectors 
  varvec = c(S = S, P = P, A = A, I = I, H = H, R = R, D = D) 
  parvec = c(bP = bP, bA = bA, bI = bI, nu = nu, sigma = sigma, gammaA = gammaA, gammaI = gammaI, gammaH = gammaH, phi = phi, rho = rho, n = n, nuInverse = nuInverse,  = ,  = , c = c, alpha = alpha) 
  timevec = seq(tstart, tfinal,by = dt) 
  #Running the model 
  simout <- Coronavirus_vaccine_model_fct(vars = varvec, pars = parvec, times = timevec) 
  #Setting up empty list and returning result as data frame called ts 
  result <- list() 
  result$ts <- simout 
  return(result) 
} 
