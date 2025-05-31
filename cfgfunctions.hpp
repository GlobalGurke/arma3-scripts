class SERVER 
{
    tag = "SERVER";
    class server
    {
        file = "functions\server";
        class saveDataAll {}; 
    };

};
class CLIENT {
    tag="CLIENT";
    class client
    {
        file = "functions\client";
        class createArsenal {}; 
        class saveData {}; 
        class loadData {}; 
        class brokenLegs {}; 
        class onSupported {}; 
    };
};