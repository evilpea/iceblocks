{
  "version": "1.2",
  "package": {
    "name": "OFFSET",
    "version": "1.0",
    "description": "Offsets A by Val",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "8d820b63-f187-46ea-ac39-7ca85a3bcd20",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 272,
            "y": 264
          }
        },
        {
          "id": "0e902c3b-f65b-4463-a6f9-f62219ba0f00",
          "type": "basic.output",
          "data": {
            "name": "",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 776,
            "y": 264
          }
        },
        {
          "id": "6276934b-ab6a-4447-9373-3491ae4b62e0",
          "type": "basic.constant",
          "data": {
            "name": "offset",
            "value": "",
            "local": false
          },
          "position": {
            "x": 520,
            "y": 104
          }
        },
        {
          "id": "8b07ca1e-71ba-4877-97af-eb1825512eef",
          "type": "basic.code",
          "data": {
            "code": "assign out = in + offset;",
            "params": [
              {
                "name": "offset"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 432,
            "y": 224
          },
          "size": {
            "width": 272,
            "height": 136
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8d820b63-f187-46ea-ac39-7ca85a3bcd20",
            "port": "out"
          },
          "target": {
            "block": "8b07ca1e-71ba-4877-97af-eb1825512eef",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "8b07ca1e-71ba-4877-97af-eb1825512eef",
            "port": "out"
          },
          "target": {
            "block": "0e902c3b-f65b-4463-a6f9-f62219ba0f00",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "6276934b-ab6a-4447-9373-3491ae4b62e0",
            "port": "constant-out"
          },
          "target": {
            "block": "8b07ca1e-71ba-4877-97af-eb1825512eef",
            "port": "offset"
          }
        }
      ]
    }
  },
  "dependencies": {}
}