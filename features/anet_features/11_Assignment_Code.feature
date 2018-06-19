Feature:  Tests the Assignment codes workflow.

  @Anet_CAC
  Scenario: Test the ability of Firm Information Workflow with western region

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan Cast" into "Full Name" on "Anet Login" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anet Login" page
    And the user can see text "Ryan Cast"
    And the user waits for 2 seconds
    And the user selects "P: ELDDRMGR 600" from "role" drop down on "Assignment Code" page
    And the user clicks on "View Assignments" element on "Assignment Code" page
    And the user can see ""Select Region";"Western Region";"Southwest Region";"Southeast Region";"Northeast Region"" values in "region" drop down on "Assignment Code" page
    And the user selects "Western Region" from "region" drop down on "Assignment Code" page
    And the user can see ""Select Sub Region";"Albany";"Brea";"Denver"" values in "subregion" drop down on "Assignment Code" page
    And the user selects "Albany" from "subregion" drop down on "Assignment Code" page
    And the user can see ""Select Assignment";"110";"111";"112";"114";"118"" values in "assignment code" drop down on "assignment code" page
    And the user selects "110" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "111" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "112" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "114" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "118" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "Brea" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"120";121"" values in "assignment code" drop down on "assignment code" page
    And the user selects "120" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Rosanna  Perez" text in "employee name table" table on "Assignment Code" page
    And the user can see "KEYANA  FRANCIS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Louis  Tate" text in "employee name table" table on "Assignment Code" page
    And the user can see "ADRIANA  PEREZ" text in "employee name table" table on "Assignment Code" page
    And the user can see "LINDA  RAMOS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Jannette  Pagan" text in "employee name table" table on "Assignment Code" page
    And the user can see "Jose  Guevara" text in "employee name table" table on "Assignment Code" page
    And the user can see "Thanh  Buiz" text in "employee name table" table on "Assignment Code" page
    And the user can see "Rosa  Rocio" text in "employee name table" table on "Assignment Code" page
    And the user can see "GUADALUPE  SOLIS" text in "employee name table" table on "Assignment Code" page

    And the user selects "121" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Qiana  Millro" text in "employee name table" table on "Assignment Code" page
    And the user can see "MICHAEL  DUNN" text in "employee name table" table on "Assignment Code" page

    And the user selects "Denver" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"130";"131";"132";"133";"134";"135";"136";"137"" values in "assignment code" drop down on "assignment code" page
    And the user selects "130" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "KATHERINE  MCFADDEN" text in "employee name table" table on "Assignment Code" page
    And the user can see "CHRISTOPHER  IRWIN" text in "employee name table" table on "Assignment Code" page
    And the user selects "131" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "GUILLERMO  ORQUIZ" text in "employee name table" table on "Assignment Code" page
    And the user can see "ROBERT  LESKOWSKY" text in "employee name table" table on "Assignment Code" page

    And the user selects "132" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Alexander  Turner" text in "employee name table" table on "Assignment Code" page

    And the user selects "133" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "BRETT  JENSEN" text in "employee name table" table on "Assignment Code" page
    And the user selects "134" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "135" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "GREGORY  FOX" text in "employee name table" table on "Assignment Code" page
    And the user can see "Tara  Herbst" text in "employee name table" table on "Assignment Code" page
    And the user selects "136" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "137" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "VICTORIA  SULENES" text in "employee name table" table on "Assignment Code" page
    And the user selects "Southwest Region" from "region" drop down on "Assignment Code" page
    And the user can see ""Select Sub Region";"Dallas";"Lombard";"Overland"" values in "subregion" drop down on "Assignment Code" page
    And the user selects "Dallas" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"210";"211";"212";"213";"214"" values in "assignment code" drop down on "assignment code" page
    And the user selects "210" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "CHARLES  GOIN" text in "employee name table" table on "Assignment Code" page
    And the user can see "ANNA  BRUNO" text in "employee name table" table on "Assignment Code" page
    And the user can see "Anna  Bruno" text in "employee name table" table on "Assignment Code" page
    And the user can see "Larry  Belk" text in "employee name table" table on "Assignment Code" page
    And the user selects "211" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Francisco  Flores" text in "employee name table" table on "Assignment Code" page
    And the user can see "Barry  Rhodes" text in "employee name table" table on "Assignment Code" page
    And the user can see "JAIME  CORREA" text in "employee name table" table on "Assignment Code" page
    And the user can see "JAMES  ADAMS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Linda  Walker" text in "employee name table" table on "Assignment Code" page

    And the user selects "212" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Javier  Macias" text in "employee name table" table on "Assignment Code" page
    And the user can see "THOMAS  GRIEGO" text in "employee name table" table on "Assignment Code" page

    And the user selects "213" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "KURT  WOLTER" text in "employee name table" table on "Assignment Code" page
    And the user can see "CONNIE  GIBSONs" text in "employee name table" table on "Assignment Code" page
    And the user can see "Ronald  Wells" text in "employee name table" table on "Assignment Code" page
    And the user selects "214" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "CHAD  HARKNESS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Michael  Christensen" text in "employee name table" table on "Assignment Code" page
    And the user selects "Lombard" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"230";"231";"232";"233"" values in "assignment code" drop down on "assignment code" page
    And the user selects "230" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Naimah  Green" text in "employee name table" table on "Assignment Code" page
    And the user can see "Lolita  Brumfield" text in "employee name table" table on "Assignment Code" page
    And the user can see "JOSEPH  WOLTZ III" text in "employee name table" table on "Assignment Code" page
    And the user can see "ANGELA  DRAPER" text in "employee name table" table on "Assignment Code" page
    And the user can see "GREGORY  HARSTICK" text in "employee name table" table on "Assignment Code" page
    And the user can see "BRENT  LIMOGES" text in "employee name table" table on "Assignment Code" page
    And the user can see "SCOTT  PAUKNER" text in "employee name table" table on "Assignment Code" page

    And the user selects "231" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Mark  Pevler" text in "employee name table" table on "Assignment Code" page
    And the user can see "Tatra  Cox" text in "employee name table" table on "Assignment Code" page
     And the user selects "232" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "RHONDA  WOODS" text in "employee name table" table on "Assignment Code" page
    And the user can see "JASON  STORY" text in "employee name table" table on "Assignment Code" page

    And the user selects "233" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "MICHAEL  BARTA" text in "employee name table" table on "Assignment Code" page
    And the user can see "Robert  Petrie" text in "employee name table" table on "Assignment Code" page
    And the user selects "Overland" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"220";"221";"222";"223"" values in "assignment code" drop down on "assignment code" page
    And the user selects "220" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "JOEL  WILLNERD" text in "employee name table" table on "Assignment Code" page
    And the user can see "JEFFREY  BUCKLIN" text in "employee name table" table on "Assignment Code" page
    And the user can see "Phillip  Overschmidt" text in "employee name table" table on "Assignment Code" page
    And the user can see "WILLIAM  THRELKELD" text in "employee name table" table on "Assignment Code" page
    And the user selects "221" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "GARTH  SAUNDERS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Mark  Heim" text in "employee name table" table on "Assignment Code" page
    And the user can see "Amy  Speer" text in "employee name table" table on "Assignment Code" page
    And the user can see "BERNARD  EHLE" text in "employee name table" table on "Assignment Code" page

    And the user selects "222" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Joseph  Wolfgram" text in "employee name table" table on "Assignment Code" page
    And the user can see "JEFFERY  GRIESS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Tamara  Dey" text in "employee name table" table on "Assignment Code" page

    And the user selects "223" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "RICKY  MILLER" text in "employee name table" table on "Assignment Code" page
    And the user can see "Bertram  Leach" text in "employee name table" table on "Assignment Code" page


    And the user selects "Southeast Region" from "region" drop down on "Assignment Code" page
    And the user can see ""Select Sub Region";"Beltsville";"Little Rock";"Sunrise"" values in "subregion" drop down on "Assignment Code" page
    And the user selects "Beltsville" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"420";"421";"422";"425";"426"" values in "assignment code" drop down on "assignment code" page
    And the user selects "420" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table

    And the user can see "Damian  Cazac" text in "employee name table" table on "Assignment Code" page
    And the user can see "JOSEPH  COX" text in "employee name table" table on "Assignment Code" page
    And the user can see "CRAIG  SELETZKY" text in "employee name table" table on "Assignment Code" page
    And the user can see "DANIEL  SKOTNICKI" text in "employee name table" table on "Assignment Code" page
    And the user can see "Dennis  Thomas" text in "employee name table" table on "Assignment Code" page

    And the user selects "421" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Gretta  Fuewell" text in "employee name table" table on "Assignment Code" page
    And the user can see "APRIL  HUMBLES" text in "employee name table" table on "Assignment Code" page

    And the user selects "422" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Lisa  Roth" text in "employee name table" table on "Assignment Code" page
    And the user selects "425" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "JENNIFER  LEAK" text in "employee name table" table on "Assignment Code" page
    And the user selects "426" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "JOHN  ZEBERAN" text in "employee name table" table on "Assignment Code" page
    And the user selects "Little Rock" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"412";"423";"424";"427";"430";"431";"432"" values in "assignment code" drop down on "assignment code" page
    And the user selects "412" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Barry  Brock" text in "employee name table" table on "Assignment Code" page
    And the user can see "Kenneth  Cash" text in "employee name table" table on "Assignment Code" page
    And the user can see "DANA  MAXWELL" text in "employee name table" table on "Assignment Code" page
    And the user selects "423" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "SANITRIC  BROWN" text in "employee name table" table on "Assignment Code" page
    And the user can see "JONATHAN  HAMRIC" text in "employee name table" table on "Assignment Code" page
    And the user selects "424" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "MARSHALL  WILLIAMS" text in "employee name table" table on "Assignment Code" page
    And the user can see "Mickey  Mancini" text in "employee name table" table on "Assignment Code" page
    And the user can see "Connie  Johnson" text in "employee name table" table on "Assignment Code" page
    And the user selects "427" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "MICHAEL  ALSWORTH" text in "employee name table" table on "Assignment Code" page
    And the user selects "430" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "JEFFREY  WIENERS" text in "employee name table" table on "Assignment Code" page
    And the user can see "FRANCES  HAYES" text in "employee name table" table on "Assignment Code" page
    And the user can see "JAMES  REED" text in "employee name table" table on "Assignment Code" page
    And the user selects "431" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "CONNY  BYLER" text in "employee name table" table on "Assignment Code" page
    And the user selects "432" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "MAYO  PRUDHOMME JR" text in "employee name table" table on "Assignment Code" page
    And the user selects "Sunrise" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"410";"411";"413"" values in "assignment code" drop down on "assignment code" page
    And the user selects "410" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Sandra  Fabregas-Ruiz" text in "employee name table" table on "Assignment Code" page
    And the user can see "MARK  TABB" text in "employee name table" table on "Assignment Code" page
    And the user can see "RAFAEL  PEREDA" text in "employee name table" table on "Assignment Code" page
    And the user can see "Jose  Pereira Jr" text in "employee name table" table on "Assignment Code" page
    And the user can see "Charles  Ebert" text in "employee name table" table on "Assignment Code" page
    And the user can see "WILLIAM  KAILE" text in "employee name table" table on "Assignment Code" page
    And the user selects "411" from "assignment code" drop down on "Assignment Code" page
    And the user can see "DOUGLAS  FULGHAM JR" text in "employee name table" table on "Assignment Code" page
    And the user can see "Matthew  Carroll" text in "employee name table" table on "Assignment Code" page
    And the user can see "Pedro  Rodriguez" text in "employee name table" table on "Assignment Code" page
    And the user can see "EDUARDO  VENDRELL" text in "employee name table" table on "Assignment Code" page
    And the user can validate the table
    And the user selects "413" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "JOSEPH  MERCADO JR" text in "employee name table" table on "Assignment Code" page
    And the user can see "Johanna  Lopez" text in "employee name table" table on "Assignment Code" page
    And the user can see "William  Tirado" text in "employee name table" table on "Assignment Code" page
    And the user can see "Angel  Rios" text in "employee name table" table on "Assignment Code" page
    And the user selects "Northeast Region" from "region" drop down on "Assignment Code" page
    And the user can see ""Select Sub Region";"Jamaica";"Oak Park";"Philadelphia";"Pittsburgh"" values in "subregion" drop down on "Assignment Code" page
    And the user selects "Jamaica" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"530";"531"" values in "assignment code" drop down on "assignment code" page
    And the user selects "530" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "MICHAEL  BECKER" text in "employee name table" table on "Assignment Code" page
    And the user can see "Amir  Ali" text in "employee name table" table on "Assignment Code" page
    And the user can see "HALINA  KLIMIUK" text in "employee name table" table on "Assignment Code" page
    And the user can see "James  Chisholm" text in "employee name table" table on "Assignment Code" page
    And the user can see "Michael  Riccardi" text in "employee name table" table on "Assignment Code" page
    And the user can see "Joseph  Ndungu" text in "employee name table" table on "Assignment Code" page
    And the user can see "Michael  Greco" text in "employee name table" table on "Assignment Code" page
    And the user can see "LAUREN  BEHAR" text in "employee name table" table on "Assignment Code" page
    And the user can see "DRICHARD  OLINSKI" text in "employee name table" table on "Assignment Code" page
    And the user can see "Mark  Susskind" text in "employee name table" table on "Assignment Code" page
    And the user selects "531" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "PAUL  BRINIG" text in "employee name table" table on "Assignment Code" page
    And the user selects "Oak Park" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"540";"541";"542";"543";"544"" values in "assignment code" drop down on "assignment code" page
    And the user selects "540" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "KRISHNA  CABINE" text in "employee name table" table on "Assignment Code" page
    And the user can see "SARA  BALLEE" text in "employee name table" table on "Assignment Code" page
    And the user can see "DEENA  ISMAIL" text in "employee name table" table on "Assignment Code" page
    And the user can see "MICHAEL  DIONNE" text in "employee name table" table on "Assignment Code" page
    And the user can see "JAMES  LAPPIN" text in "employee name table" table on "Assignment Code" page
     And the user selects "541" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Thomas  Gallagher" text in "employee name table" table on "Assignment Code" page
    And the user selects "542" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Clarke  Jones" text in "employee name table" table on "Assignment Code" page
    And the user can see "Mentus  Ugwu" text in "employee name table" table on "Assignment Code" page
    And the user selects "543" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Daniel  Sturzen" text in "employee name table" table on "Assignment Code" page
    And the user can see "LISA  SWALLOW" text in "employee name table" table on "Assignment Code" page
    And the user selects "544" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Robert  Allshouse" text in "employee name table" table on "Assignment Code" page
     And the user selects "Philadelphia" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"510";"511";"512";521"" values in "assignment code" drop down on "assignment code" page
    And the user selects "510" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Donald  Russell" text in "employee name table" table on "Assignment Code" page
    And the user can see "CHRISTOPHER  MOLLOY" text in "employee name table" table on "Assignment Code" page
    And the user can see "Michael  Altimari" text in "employee name table" table on "Assignment Code" page
    And the user can see "Robert  Simms" text in "employee name table" table on "Assignment Code" page
    And the user can see "DPAUL  FLANAGAN" text in "employee name table" table on "Assignment Code" page
    And the user can see "MICHAEL  KAIN" text in "employee name table" table on "Assignment Code" page
    And the user can see "Joseph  Priore" text in "employee name table" table on "Assignment Code" page
    And the user can see "Michael  Ronczka" text in "employee name table" table on "Assignment Code" page
    And the user can see "Thomas  Urban" text in "employee name table" table on "Assignment Code" page
    And the user selects "511" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user selects "512" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "DANIEL  HOLMES" text in "employee name table" table on "Assignment Code" page
    And the user can see "Paul  Calafiore" text in "employee name table" table on "Assignment Code" page
    And the user can see "AMINA  BEG" text in "employee name table" table on "Assignment Code" page
    And the user can see "Paul  Brown" text in "employee name table" table on "Assignment Code" page
    And the user can see "Anthony  Rossano" text in "employee name table" table on "Assignment Code" page
    And the user selects "521" from "assignment code" drop down on "Assignment Code" page
    And the user selects "Pittsburgh" from "Subregion" drop down on "Assignment code" page
    And the user can see ""Select Assignment";"520";"522";"523";"524"" values in "assignment code" drop down on "assignment code" page
    And the user selects "520" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Debbie  Dietz" text in "employee name table" table on "Assignment Code" page
    And the user can see "David  Duvall" text in "employee name table" table on "Assignment Code" page
    And the user can see "ROBERT  FOSTER" text in "employee name table" table on "Assignment Code" page
    And the user can see "VICTORIA  USHER" text in "employee name table" table on "Assignment Code" page
    And the user selects "522" from "assignment code" drop down on "Assignment Code" page
    And the user can see "NICHOLAS  PAPAPIETRO" text in "employee name table" table on "Assignment Code" page
    And the user can see "KARI  SKIVER" text in "employee name table" table on "Assignment Code" page
    And the user can validate the table
    And the user selects "523" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "SUSAN  ISBERG" text in "employee name table" table on "Assignment Code" page
    And the user can see "Robert  Ackert" text in "employee name table" table on "Assignment Code" page
    And the user can see "Thomas  Collaro" text in "employee name table" table on "Assignment Code" page
    And the user can see "Nicholas  Molinski" text in "employee name table" table on "Assignment Code" page
    And the user can see "John  Augustine" text in "employee name table" table on "Assignment Code" page
    And the user can see "Joseph  Palmisano" text in "employee name table" table on "Assignment Code" page
    And the user selects "524" from "assignment code" drop down on "Assignment Code" page
    And the user can validate the table
    And the user can see "Steve  Shamhart" text in "employee name table" table on "Assignment Code" page
    And the user can see "Regina  Salter" text in "employee name table" table on "Assignment Code" page




