{
  "version": "1.2",
  "package": {
    "name": "ASSERT",
    "version": "1.0",
    "description": "Latches a high signal on the output if a falling edge was detected on the input",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "d470971e-e6ad-496c-814e-be9a78c14861",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
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
            "x": 616,
            "y": 352
          }
        },
        {
          "id": "130dbe98-45ae-480a-b41b-359bf17cbb76",
          "type": "basic.output",
          "data": {
            "name": "",
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
            "x": 1064,
            "y": 352
          }
        },
        {
          "id": "46c6e964-2bdc-4383-ba12-42b7ef2c2a94",
          "type": "basic.code",
          "data": {
            "code": "reg out_t = 0;\nassign out = out_t;\n\nalways @(negedge in)\n  out_t <= 1;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in"
                }
              ],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 752,
            "y": 296
          },
          "size": {
            "width": 264,
            "height": 168
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d470971e-e6ad-496c-814e-be9a78c14861",
            "port": "out"
          },
          "target": {
            "block": "46c6e964-2bdc-4383-ba12-42b7ef2c2a94",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "46c6e964-2bdc-4383-ba12-42b7ef2c2a94",
            "port": "out"
          },
          "target": {
            "block": "130dbe98-45ae-480a-b41b-359bf17cbb76",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}