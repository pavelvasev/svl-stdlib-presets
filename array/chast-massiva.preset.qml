Preset {
  title: "Часть массива"
  help: ""
  helpurl: ""
  targetAbility: "transform-object"

  function extraFeel(obj) {
    return obj.input && obj.input.$class == "Array2dRobot";
  }

function generate(inp) {
  var idx = 115;
  return inp.slice( 0, idx+1 ); // берем часть массива от 0 до idx
  //return inp.slice( idx ); // берем массив от idx до конца
}

  initParams: [{
    "param-name": "arr",
    "code": generate.toString(),
    "logicalName": ""
  }]
}
