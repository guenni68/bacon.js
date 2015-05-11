describe "Package management", ->
  fs = require("fs")
  verifyJson = (fn) -> 
    JSON.parse(fs.readFileSync("bower.json", "utf-8"))
  it "NPM", ->
    verifyJson "package.json"
  it "Component", ->
    verifyJson "component.json"
  it "Bower", ->
    verifyJson "bower.json"
