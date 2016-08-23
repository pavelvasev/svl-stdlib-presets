Preset {
  title: "Спираль"
  help: ""
  helpurl: ""
  targetAbility: "compute-param"

  function extraFeel(obj) {
    return obj.input && obj.input.$class == "Array2dRobot";
  }

  function generate() {
    var res = [];
      for (var t=0; t<360*5; t+=10) {
          var a = Math.PI * t / 180;
          var x = Math.cos(-a);
          var y = Math.sin(-a);
          var z = t / 300;
          var r = t / 50;
          res.push( [r*x,r*y,z] )
      }
      return res;
}

  initParams: [{
    "param-name": "arr",
    "code": generate.toString()
  }]
}
