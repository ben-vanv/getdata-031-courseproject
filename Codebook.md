Codebook for Course Project for Getting and Cleansing Data

# Summary
This codebook accompanies the file TidyData.txt, which provides summarized mean and standard deviation outputs from the transformation of the UCI Human Activity Recognition data set. The data covers a number of subjects and activities
across walking, walking upstairs, walking downstairs, sitting, standing and laying

An observation within the tidy data file represents a of subject's ID, the name of the associated activity, and the means of record results representing mean and standard deviation activity measures for the HAR data set.

Derivation for underlying HAR activity values are as per the readme contained within that data set. Description of summary calculated values below.

# Non-summary variables in Tidy Data file #

<table>
    <tr>
        <th>Column Number</th>
        <th>Column Description</th>
		<th>Unit of Measure</th>
        <th>Detail</th>
    </tr>
    <tr>
        <td align=right valign=top>1</td>
        <td valign=top>SubjectID</td>
		<td valign=top>Number</td>
        <td valign=top>A unique numer representing a subject in the experiment for collection of HAR data</td>
    </tr>
    <tr>
        <td align=right valign=top>2</td>
        <td valign=top>ActivityDescription</td>
		<td valign=top>Character String</td>
        <td valign=top>A human readable description of the activities performed by participants in the experiment. These activities were: walking, walking upstairs, walking downstairs, sitting, standing and laying </td>
    </tr>
</table>

# Summary variables in the Tidy Data file #
<table>
<tr>
        <th>Column Number</th>
        <th>Column Description</th>
		<th>Unit of Measure</th>
        <th>Detail</th>
    </tr>
 <tr>
     <td align=right valign=top> 3                               </td>                          
     <td valign=top>      AverageTimeBodyAccMean.X </td>                   
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top> Average summary for TimeBodyAccMean.X </td>
 </tr>
 <tr>
     <td align=right valign=top> 4                               </td>                          
     <td valign=top>      AverageTimeBodyAccMean.Y </td>                   
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccMean.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 5                               </td>                          
     <td valign=top>      AverageTimeBodyAccMean.Z </td>                   
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for  AverageTimeBodyAccMean.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 6                               </td>                          
     <td valign=top>                   AverageTimeBodyAccStandardDeviation.X </td>                                
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 7                               </td>                          
     <td valign=top>                   AverageTimeBodyAccStandardDeviation.Y </td>                                
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 8                               </td>                          
     <td valign=top>                   AverageTimeBodyAccStandardDeviation.Z </td>                                
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 9                               </td>                          
     <td valign=top>         AverageTimeGravityAccMean.X </td>                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccMean.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 10                              </td>                          
     <td valign=top>         AverageTimeGravityAccMean.Y </td>                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccMean.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 11                              </td>                          
     <td valign=top>         AverageTimeGravityAccMean.Z </td>                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccMean.Z </td>
 </tr>
 <tr>
     <td align=right valign=top> 12                              </td>                          
     <td valign=top>                      AverageTimeGravityAccStandardDeviation.X
 </td>                                   
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 13                              </td>                          
     <td valign=top>                      AverageTimeGravityAccStandardDeviation.Y
 </td>                                   
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 14                              </td>                          
     <td valign=top>                      AverageTimeGravityAccStandardDeviation.Z
 </td>                                   
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for  AverageTimeGravityAccStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 15                              </td>                          
     <td valign=top>          AverageTimeBodyAccJerkMean.X </td>                       
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkMean.X </td>
 </tr>
 <tr>
     <td align=right valign=top> 16                              </td>                          
     <td valign=top>          AverageTimeBodyAccJerkMean.Y </td>                       
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkMean.Y </td>
 </tr>
 <tr>
     <td align=right valign=top> 17                              </td>                          
     <td valign=top>          AverageTimeBodyAccJerkMean.Z </td>                       
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkMean.Z </td>
 </tr>
 <tr>
     <td align=right valign=top> 18                              </td>                          
     <td valign=top>                       AverageTimeBodyAccJerkStandardDeviation.X
 </td>                                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 19                              </td>                          
     <td valign=top>                       AverageTimeBodyAccJerkStandardDeviation.Y
 </td>                                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for  AverageTimeBodyAccJerkStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 20                              </td>                          
     <td valign=top>                       AverageTimeBodyAccJerkStandardDeviation.Z
 </td>                                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 21                              </td>                          
     <td valign=top>       AverageTimeBodyGyroMean.X </td>                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroMean.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 22                              </td>                          
     <td valign=top>       AverageTimeBodyGyroMean.Y </td>                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroMean.Y </td>
 </tr>
 <tr>
     <td align=right valign=top> 23                              </td>                          
     <td valign=top>       AverageTimeBodyGyroMean.Z </td>                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroMean.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 24                              </td>                          
     <td valign=top>                    AverageTimeBodyGyroStandardDeviation.X </td>                                 
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 25                              </td>                          
     <td valign=top>                    AverageTimeBodyGyroStandardDeviation.Y </td>                                 
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 26                              </td>                          
     <td valign=top>                    AverageTimeBodyGyroStandardDeviation.Z </td>                                 
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 27                              </td>                          
     <td valign=top>           AverageTimeBodyGyroJerkMean.X </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkMean.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 28                              </td>                          
     <td valign=top>           AverageTimeBodyGyroJerkMean.Y </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkMean.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 29                              </td>                          
     <td valign=top>           AverageTimeBodyGyroJerkMean.Z </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkMean.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 30                              </td>                          
     <td valign=top>                        AverageTimeBodyGyroJerkStandardDeviation.X
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 31                              </td>                          
     <td valign=top>                        AverageTimeBodyGyroJerkStandardDeviation.Y
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 32                              </td>                          
     <td valign=top>                        AverageTimeBodyGyroJerkStandardDeviation.Z
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 33                              </td>                          
     <td valign=top>       AverageTimeBodyAccMagMean </td>                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccMagMean </td>
 </tr>
 <tr>
     <td align=right valign=top> 34                              </td>                          
     <td valign=top>                    AverageTimeBodyAccMagStandardDeviation </td>                                 
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 35                              </td>                          
     <td valign=top>          AverageTimeGravityAccMagMean </td>                       
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 36                              </td>                          
     <td valign=top>                       AverageTimeGravityAccMagStandardDeviation
 </td>                                    
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeGravityAccMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 37                              </td>                          
     <td valign=top>           AverageTimeBodyAccJerkMagMean </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 38                              </td>                          
     <td valign=top>                        AverageTimeBodyAccJerkMagStandardDeviation
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyAccJerkMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 39                              </td>                          
     <td valign=top>        AverageTimeBodyGyroMagMean </td>                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 40                              </td>                          
     <td valign=top>                     AverageTimeBodyGyroMagStandardDeviation </td>                                  
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 41                              </td>                          
     <td valign=top>            AverageTimeBodyGyroJerkMagMean </td>                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 42                              </td>                          
     <td valign=top>                         AverageTimeBodyGyroJerkMagStandardDeviation
 </td>                                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for TimeBodyGyroJerkMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 43                              </td>                          
     <td valign=top>           AverageFrequencyBodyAccMean.X </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccMean.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 44                              </td>                          
     <td valign=top>           AverageFrequencyBodyAccMean.Y </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccMean.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 45                              </td>                          
     <td valign=top>           AverageFrequencyBodyAccMean.Z </td>                        
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccMean.Z </td>
 </tr>
 <tr>
     <td align=right valign=top> 46                              </td>                          
     <td valign=top>                        AverageFrequencyBodyAccStandardDeviation.X
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 47                              </td>                          
     <td valign=top>                        AverageFrequencyBodyAccStandardDeviation.Y
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 48                              </td>                          
     <td valign=top>                        AverageFrequencyBodyAccStandardDeviation.Z
 </td>                                     
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 49                              </td>                          
     <td valign=top>               AverageFrequencyBodyAccJerkMean.X </td>                            
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccJerkMean.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 50                              </td>                          
     <td valign=top>               AverageFrequencyBodyAccJerkMean.Y </td>                            
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccJerkMean.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 51                              </td>                          
     <td valign=top>               AverageFrequencyBodyAccJerkMean.Z </td>                            
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccJerkMean.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 52                              </td>                          
     <td valign=top>                            AverageFrequencyBodyAccJerkStandardDeviation.X
 </td>                                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccJerkStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 53                              </td>                          
     <td valign=top>                            AverageFrequencyBodyAccJerkStandardDeviation.Y
 </td>                                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccJerkStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 54                              </td>                          
     <td valign=top>                            AverageFrequencyBodyAccJerkStandardDeviation.Z
 </td>                                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccJerkStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 55                              </td>                          
     <td valign=top>            AverageFrequencyBodyGyroMean.X </td>                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyGyroMean.X </td>
 </tr>
 <tr>
     <td align=right valign=top> 56                              </td>                          
     <td valign=top>            AverageFrequencyBodyGyroMean.Y </td>                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyGyroMean.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 57                              </td>                          
     <td valign=top>            AverageFrequencyBodyGyroMean.Z </td>                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyGyroMean.Z </td>
 </tr>
 <tr>
     <td align=right valign=top> 58                              </td>                          
     <td valign=top>                         AverageFrequencyBodyGyroStandardDeviation.X
 </td>                                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyGyroStandardDeviation.X</td>
 </tr>
 <tr>
     <td align=right valign=top> 59                              </td>                          
     <td valign=top>                         AverageFrequencyBodyGyroStandardDeviation.Y
 </td>                                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyGyroStandardDeviation.Y</td>
 </tr>
 <tr>
     <td align=right valign=top> 60                              </td>                          
     <td valign=top>                         AverageFrequencyBodyGyroStandardDeviation.Z
 </td>                                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyGyroStandardDeviation.Z</td>
 </tr>
 <tr>
     <td align=right valign=top> 61                              </td>                          
     <td valign=top>            AverageFrequencyBodyAccMagMean </td>                         
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 62                              </td>                          
     <td valign=top>                         AverageFrequencyBodyAccMagStandardDeviation
 </td>                                      
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyAccMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 63                              </td>                          
     <td valign=top>                    AverageFrequencyBodyBodyAccJerkMagMean </td>                                 
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyBodyAccJerkMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 64                              </td>                          
     <td valign=top>                                 AverageFrequencyBodyBodyAccJerkMagStandardDeviation
 </td>                                              
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyBodyAccJerkMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 65                              </td>                          
     <td valign=top>                 AverageFrequencyBodyBodyGyroMagMean </td>                              
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyBodyGyroMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 66                              </td>                          
     <td valign=top>                              AverageFrequencyBodyBodyGyroMagStandardDeviation
 </td>                                           
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyBodyGyroMagStandardDeviation</td>
 </tr>
 <tr>
     <td align=right valign=top> 67                              </td>                          
     <td valign=top>                     AverageFrequencyBodyBodyGyroJerkMagMean </td>                                  
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyBodyGyroJerkMagMean</td>
 </tr>
 <tr>
     <td align=right valign=top> 68                              </td>                          
     <td valign=top>                                  AverageFrequencyBodyBodyGyroJerkMagStandardDeviation
 </td>                                               
     <td valign=top> Mean value of column for subject and activity records </td>
     <td valign=top>Average summary value across subject and activity groups for FrequencyBodyBodyGyroJerkMagStandardDeviation</td>
 </tr>
</table>	