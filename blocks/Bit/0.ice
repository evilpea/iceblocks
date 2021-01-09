{
  "version": "1.2",
  "package": {
    "name": "0",
    "version": "1.0",
    "description": "Bit 0",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "c612fac7-815b-4581-93af-6b85d34c06bb",
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
            "x": 496,
            "y": 168
          }
        },
        {
          "id": "8acbb73e-d7c7-43c4-b4b7-506955d952d5",
          "type": "basic.code",
          "data": {
            "code": "assign out = 1'b0;",
            "params": [],
            "ports": {
              "in": [],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 248,
            "y": 136
          },
          "size": {
            "width": 192,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8acbb73e-d7c7-43c4-b4b7-506955d952d5",
            "port": "out"
          },
          "target": {
            "block": "c612fac7-815b-4581-93af-6b85d34c06bb",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}