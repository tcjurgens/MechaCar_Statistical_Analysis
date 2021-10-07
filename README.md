# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="749" alt="Screen Shot 2021-10-07 at 3 59 01 PM" src="https://user-images.githubusercontent.com/86446641/136453700-cf179037-0c2b-49c4-8542-8839d94a4e39.png">

- In the image above, we see that the variables/coefficients titled 'vehicle_length' and 'ground clearence' register a significance to the point that we may be almost certain these elements provide a non-random amount of variance to the MPG values. 'vehicle_weight' 'spoiler_angle' and 'AWD' do not have values small enough to treat the variance as non random. 
- The slope of the linear model cannot be considered as zero. The p-val shown in the last line of the image (5.35e-11) is incredibly small, establishing with extreme certainty that the slope of our linear model cannot be considered 0.
- The model predicts the MPG of the MechaCar prototypes reasonable well. The R-Squared val of our data (0.7149) indicates about ~71.5% accuracy of our linear model.


## Summary Statistics on Suspension Coils

### Total Summary
<img width="747" alt="Screen Shot 2021-10-07 at 4 06 54 PM" src="https://user-images.githubusercontent.com/86446641/136454667-28e2e17f-7610-41a8-b18b-34765ec40bb1.png">

- In totality, our data does not exceed a suspension coil variance of 100PSI, shown in the image above (62.29).

### Lot Summary
<img width="747" alt="Screen Shot 2021-10-07 at 4 07 06 PM" src="https://user-images.githubusercontent.com/86446641/136454695-401f7646-f5f5-4a9f-9698-736878dcf43f.png">

- HOWEVER, when inspecting our data in each lot seperately, we see that Lot 3 exceeds our variance tolerance (170.286).

## T-tests on Suspension Coils

<img width="748" alt="Screen Shot 2021-10-07 at 4 08 54 PM" src="https://user-images.githubusercontent.com/86446641/136454929-a947025b-b4ac-407c-8b90-04724cf24ec1.png">

- The image above shows that in totality, the T-test on suspension coils across all lots does not show significant difference from out population mean (0.06028) if we were using a p-val 0f 0.05 to reject our null hypothesis. 

<img width="747" alt="Screen Shot 2021-10-07 at 4 09 26 PM" src="https://user-images.githubusercontent.com/86446641/136454988-5796449a-b163-4c6a-b80b-9c59bfdec9d2.png">\

- However, when we review/ run T-tests for each lot we can see that Lot 3 has a p-val (0.04168) below our criteria (assuming 0.05 to be this value). The other 2 lots have p-vals large enough that we cannot reject the null. 


-Overall, the data suggests that overall there is no statistical significange to suggest any difference in suspension coils in the lots from our population mean of 1500PSI. However, in Lot 3 there this significange is present, and we can operate with the assumption that the mean PSI in Lot 3 is not equal to 1500. 

## Study Desgin: MechaCar vs Competition

An interesting study to perform on the MechaCar vs the Competion could be their highway fuel efficiencies.

- the metric to test would be these fuel efficiencies, and the mpg for these vehicles on the highway.
- the Null would be that the MechaCar and the Competition have the same fuel efficiencies. The Alt Hypothesis would be that these efficiencies are not the same.
- I would run ANOVA tests to analyze highway fuel efficiencies. The specific test I would run would be a 2-tailed T-test using a p-val of 0.05 as the threshold to accept the Alt Hypothesis. This is the appropriate test to run for this study.
- the data I would need to perform this analysis would be a sample population-- say 25-75 different vehicles. The vehicles compared would all need to be in the same class as well (sedan, pick-up, whatever/etc.). We would then need to analyze and compare mpg of these vehicles on the highway. We could do this by physically driving the cars on a full tank of fuel (on the highway), and/or by trusting mpg data provided by the competion to analyze if the MechaCar provides any significant difference in fuel efficiency when operating on the highway. It would also be ideal to perform this test with all vehicles having used the same type of fuel. 
