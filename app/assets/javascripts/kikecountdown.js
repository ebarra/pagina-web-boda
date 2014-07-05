var myCountdown4 = new Countdown({
                  year    : 2014,  // (optional) The target date's year
                  month  : 10,     // (optional) The target date's month
                  day    : 25,     // (optional) The target date's day
                  hour   : 0,     // (optional) The target date's hour 
                  inline    : true,
                  width:300, 
                  height:40, 
                  interval : 1000,        // Number of milliseconds between display updates. 1000 = 1 second                        
                  rangeHi  : "month",
                  hideLine  : true,
                  labelText  : {
                              second : "SEGS",
                              minute : "MINS",
                              hour   : "HORAS",
                              day    : "DIAS",
                              month  : "MESES",
                              year   : "AÑOS"   // <- no comma on last item!
                            },  
                  numbers   :   {
                          font  : "Arial",
                          color : "#FFFFFF",
                          bkgd  : "#4B95B7",
                          rounded : 0.35,       // percentage of size 
                          shadow  : {
                                x : 0,      // x offset (in pixels)
                                y : 3,      // y offset (in pixels)
                                s : 4,      // spread
                                c : "#000000",  // color
                                a : 0.4     // alpha  // <- no comma on last item!
                                }
                          } // <- no comma on last item!
                  });

