{
  "version": "1.2",
  "package": {
    "name": ">",
    "version": "1.0",
    "description": "Outputs 1 if input is greater than N",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "ae3e6f64-f1a8-4452-9fd4-207aa3dc6734",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[3:0]",
            "clock": false,
            "size": 4,
            "virtual": true
          },
          "position": {
            "x": 184,
            "y": 192
          }
        },
        {
          "id": "6649d46e-8d99-4db7-bd39-b2618ffe46d8",
          "type": "basic.output",
          "data": {
            "name": "eq",
            "virtual": true
          },
          "position": {
            "x": 672,
            "y": 192
          }
        },
        {
          "id": "e55f9ee2-65b4-4a64-a9a1-4970992df93a",
          "type": "basic.constant",
          "data": {
            "name": "",
            "value": "",
            "local": false
          },
          "position": {
            "x": 440,
            "y": 56
          }
        },
        {
          "id": "d57eeafb-5e5a-4d86-8b94-9d0f6adf6f27",
          "type": "basic.code",
          "data": {
            "code": "assign eq = (in > N) ? 1 : 0;",
            "params": [
              {
                "name": "N"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "eq"
                }
              ]
            }
          },
          "position": {
            "x": 344,
            "y": 160
          },
          "size": {
            "width": 288,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "ae3e6f64-f1a8-4452-9fd4-207aa3dc6734",
            "port": "out"
          },
          "target": {
            "block": "d57eeafb-5e5a-4d86-8b94-9d0f6adf6f27",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "e55f9ee2-65b4-4a64-a9a1-4970992df93a",
            "port": "constant-out"
          },
          "target": {
            "block": "d57eeafb-5e5a-4d86-8b94-9d0f6adf6f27",
            "port": "N"
          }
        },
        {
          "source": {
            "block": "d57eeafb-5e5a-4d86-8b94-9d0f6adf6f27",
            "port": "eq"
          },
          "target": {
            "block": "6649d46e-8d99-4db7-bd39-b2618ffe46d8",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}