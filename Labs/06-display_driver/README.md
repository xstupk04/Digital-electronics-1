# Home preparation 

![priprava](https://user-images.githubusercontent.com/60606149/76635295-89f77200-6547-11ea-8dc7-60ec9e16a84e.png)

## Code:

```{signal: [
  ['Digit position',
    {name: 'disp_dig_o(3)', wave: 'xx01..01..xx', },
    {name: 'disp_dig_o(2)', wave: 'xx101..01.xx', },
    {name: 'disp_dig_o(1)', wave: 'xx1.01..01xx', },
    {name: 'disp_dig_o(0)', wave: 'xx1..01..0xx', },
  ],
  ['Seven-segment data',
    {name: 'disp_seg_o',       wave: 'xx33335555xx', data: ['0','3','1','4','0','3','1','4'], },  
    {name: 'A: disp_seg_o(6)', wave: 'xx0.1.0.1.x.', },
    {name: 'B: disp_seg_o(5)', wave: 'xx0..10..1x.',          },
    {name: 'C: disp_seg_o(4)', wave: 'xx0.......x.',          },
    {name: 'D: disp_seg_o(3)', wave: 'xx0.1.0.1.x.',          },
    {name: 'E: disp_seg_o(2)', wave: 'xx01..01..x.',          },
    {name: 'F: disp_seg_o(1)', wave: 'xx01.0.1.0x.',          },
    {name: 'G: disp_seg_o(0)', wave: 'xx10101010x.',          },
  ],
  {name: 'Decimal point', wave: 'xx101..01.xx', },
],
  head: {
    text: '4ms   4ms   4ms   4ms   4ms   4ms   4ms   4ms',
  },
}
}
  
