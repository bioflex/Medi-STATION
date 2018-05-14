function startWeightSensor() {

     var min = Math.ceil(30);
     var max = Math.floor(200);

    var weight = Math.floor(Math.random() * (max - min + 1)) + min; //The maximum is inclusive and the minimum is inclusive

     return "" + weight
}

function startBloodpressureSensor()
{
    var systolicMin = Math.ceil(60);
    var systolicMax = Math.floor(200);
    var diastolicMin = Math.ceil(40);
    var diastolicMax = Math.floor(160);

    var systolic = Math.floor(Math.random() * (systolicMax - systolicMin + 1)) + systolicMin;
    var diastolic = Math.floor(Math.random() * (diastolicMax - diastolicMin + 1)) + diastolicMin;

    return "" + systolic + " / " + diastolic
}
