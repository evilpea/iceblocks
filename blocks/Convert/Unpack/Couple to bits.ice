{
  "version": "1.2",
  "package": {
    "name": "[ 2 ]",
    "version": "1.0",
    "description": "Couple to bits",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "fa37c8be-e770-4167-a5d1-732dc974fa2f",
          "type": "basic.output",
          "data": {
            "name": "b1",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 984,
            "y": 448
          }
        },
        {
          "id": "229ce51c-2987-4e2e-8daa-e26c93bfcf10",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[1:0]",
            "pins": [
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
            "x": 512,
            "y": 488
          }
        },
        {
          "id": "be016f36-2c41-4d6e-82e6-f14c54222199",
          "type": "basic.output",
          "data": {
            "name": "b0",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 984,
            "y": 528
          }
        },
        {
          "id": "5f045c61-1f35-4963-be39-bc1c4056e7b7",
          "type": "basic.code",
          "data": {
            "code": "assign b0 = in[0];\nassign b1 = in[1];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[1:0]",
                  "size": 2
                }
              ],
              "out": [
                {
                  "name": "b1"
                },
                {
                  "name": "b0"
                }
              ]
            }
          },
          "position": {
            "x": 664,
            "y": 440
          },
          "size": {
            "width": 280,
            "height": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "229ce51c-2987-4e2e-8daa-e26c93bfcf10",
            "port": "out"
          },
          "target": {
            "block": "5f045c61-1f35-4963-be39-bc1c4056e7b7",
            "port": "in"
          },
          "size": 2
        },
        {
          "source": {
            "block": "5f045c61-1f35-4963-be39-bc1c4056e7b7",
            "port": "b1"
          },
          "target": {
            "block": "fa37c8be-e770-4167-a5d1-732dc974fa2f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5f045c61-1f35-4963-be39-bc1c4056e7b7",
            "port": "b0"
          },
          "target": {
            "block": "be016f36-2c41-4d6e-82e6-f14c54222199",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}