{
  "version": "1.2",
  "package": {
    "name": "[ 2 ]",
    "version": "1.0",
    "description": "Bits to couple",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "e8526d55-48d0-4147-a9a5-7c162f142c78",
          "type": "basic.input",
          "data": {
            "name": "b1",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 456,
            "y": 232
          }
        },
        {
          "id": "d26f1974-6bab-4073-8883-36a5140d300f",
          "type": "basic.output",
          "data": {
            "name": "",
            "range": "[1:0]",
            "size": 2,
            "virtual": true
          },
          "position": {
            "x": 960,
            "y": 264
          }
        },
        {
          "id": "08d410c7-0c3f-401f-8475-afaa5a3f6321",
          "type": "basic.input",
          "data": {
            "name": "b0",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 456,
            "y": 296
          }
        },
        {
          "id": "eac8c7bf-dac5-49b7-b7e9-833bd11bacf4",
          "type": "basic.code",
          "data": {
            "code": "assign out = {b, a};",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "b"
                },
                {
                  "name": "a"
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": 600,
            "y": 232
          },
          "size": {
            "width": 304,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "08d410c7-0c3f-401f-8475-afaa5a3f6321",
            "port": "out"
          },
          "target": {
            "block": "eac8c7bf-dac5-49b7-b7e9-833bd11bacf4",
            "port": "a"
          }
        },
        {
          "source": {
            "block": "e8526d55-48d0-4147-a9a5-7c162f142c78",
            "port": "out"
          },
          "target": {
            "block": "eac8c7bf-dac5-49b7-b7e9-833bd11bacf4",
            "port": "b"
          }
        },
        {
          "source": {
            "block": "eac8c7bf-dac5-49b7-b7e9-833bd11bacf4",
            "port": "out"
          },
          "target": {
            "block": "d26f1974-6bab-4073-8883-36a5140d300f",
            "port": "in"
          },
          "size": 2
        }
      ]
    }
  },
  "dependencies": {}
}