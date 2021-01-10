{
  "version": "1.2",
  "package": {
    "name": "[ 8 ]",
    "version": "1.0",
    "description": "Outputs 8 bits from a byte",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "a40f95b5-c0e3-4a5f-90c9-4eacb5ce5c37",
          "type": "basic.output",
          "data": {
            "name": "b7",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 112
          }
        },
        {
          "id": "a68c4301-1df9-45dd-a31d-57f19617bfd5",
          "type": "basic.output",
          "data": {
            "name": "b6",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 160
          }
        },
        {
          "id": "678746a7-c161-45f1-8bc4-0887bd934e1d",
          "type": "basic.output",
          "data": {
            "name": "b5",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 200
          }
        },
        {
          "id": "a3e070a5-fac9-420e-99a8-4044b7674f7c",
          "type": "basic.output",
          "data": {
            "name": "b4",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 248
          }
        },
        {
          "id": "69ccdfad-2f4c-45d0-9f8d-008295273317",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[7:0]",
            "clock": false,
            "size": 8,
            "virtual": true
          },
          "position": {
            "x": 200,
            "y": 272
          }
        },
        {
          "id": "3bea35eb-27c5-477f-ae2b-ba7a044fa256",
          "type": "basic.output",
          "data": {
            "name": "b3",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 296
          }
        },
        {
          "id": "ab9f0453-dc82-4cc0-b2e2-7ffbeddc7d84",
          "type": "basic.output",
          "data": {
            "name": "b2",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 344
          }
        },
        {
          "id": "87dad550-29d8-4ab1-bf6d-e9c27fa710d3",
          "type": "basic.output",
          "data": {
            "name": "b1",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 384
          }
        },
        {
          "id": "d497a656-7374-4670-8b37-a4443156eaf7",
          "type": "basic.output",
          "data": {
            "name": "b0",
            "virtual": true
          },
          "position": {
            "x": 840,
            "y": 432
          }
        },
        {
          "id": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
          "type": "basic.code",
          "data": {
            "code": "assign out0 = in[0];\nassign out1 = in[1];\nassign out2 = in[2];\nassign out3 = in[3];\nassign out4 = in[4];\nassign out5 = in[5];\nassign out6 = in[6];\nassign out7 = in[7];",
            "params": [],
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
                  "name": "out7"
                },
                {
                  "name": "out6"
                },
                {
                  "name": "out5"
                },
                {
                  "name": "out4"
                },
                {
                  "name": "out3"
                },
                {
                  "name": "out2"
                },
                {
                  "name": "out1"
                },
                {
                  "name": "out0"
                }
              ]
            }
          },
          "position": {
            "x": 368,
            "y": 120
          },
          "size": {
            "width": 408,
            "height": 368
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out0"
          },
          "target": {
            "block": "d497a656-7374-4670-8b37-a4443156eaf7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out1"
          },
          "target": {
            "block": "87dad550-29d8-4ab1-bf6d-e9c27fa710d3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out2"
          },
          "target": {
            "block": "ab9f0453-dc82-4cc0-b2e2-7ffbeddc7d84",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out3"
          },
          "target": {
            "block": "3bea35eb-27c5-477f-ae2b-ba7a044fa256",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out4"
          },
          "target": {
            "block": "a3e070a5-fac9-420e-99a8-4044b7674f7c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out5"
          },
          "target": {
            "block": "678746a7-c161-45f1-8bc4-0887bd934e1d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out6"
          },
          "target": {
            "block": "a68c4301-1df9-45dd-a31d-57f19617bfd5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out7"
          },
          "target": {
            "block": "a40f95b5-c0e3-4a5f-90c9-4eacb5ce5c37",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "69ccdfad-2f4c-45d0-9f8d-008295273317",
            "port": "out"
          },
          "target": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}