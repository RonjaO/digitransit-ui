## JavaScript engine benckmarks

Digitransit-ui UX depends on browser JS engine performance. In here, we keep track of some devices that were tested with http://browserbench.org/JetStream/

## Results

| Device                                    | Result |
|-------------------------------------------|--------|
| MBP I7-4850HQ @ 2,3GHz i7 (Chrome)        | 182    |
| i7-4700MQ @2,40GHz WIN10 (Edge) (Chrome)  | 170    |
| i7-5500U CPU @ 2.40GHz (Chromium)         | 159    |
| i7-4700MQ @2,40GHz WIN10 (Edge) (Firefox) | 147    |
| i7-2620M CPU @ 2.70GHz (Chromium)         | 135    |
| iPhone 6s (Chrome)                        | 119    |
| MBP i5 (Chrome)                           | 111    |
| iPhone 6 plus (Safari)                    | 69     |
| iPad Air 2 (Safari)                       | 60     |
| Samsung Galaxy S7 (Chrome)                | 58     |
| Samsung Galaxy S6 (Chrome)                | 49     |
| Xperia Z5C (Chrome)                       | 47     |
| LG G2 (Chrome)                            | 31     |
| 1+1 "2014 Flagship killer" (Chrome)       | 31     |
| Lumia 950 (Edge)                          | 31     |
| Nexus 6 (Chrome)                          | 31     |
| Honor 5 (Chrome)                          | 30     |
| Nexus 5 (Chrome)                          | 27     |
| LG G4 (Chrome)                            | 27     |
| Lumia 650 (Edge)                          | 15     |
| Lumia 635 (IE)                            | 11     |

## Analysis

It seems that JetStream benchmark 30 is the threshold where application becomes usable. Below 30, it feels laggy. Results 50 or above seem to give good UX.