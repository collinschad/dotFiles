const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0d0c0f", /* black   */
  [1] = "#9C604A", /* red     */
  [2] = "#798574", /* green   */
  [3] = "#F0A215", /* yellow  */
  [4] = "#9C9172", /* blue    */
  [5] = "#DFA365", /* magenta */
  [6] = "#A8A68A", /* cyan    */
  [7] = "#e0d3bf", /* white   */

  /* 8 bright colors */
  [8]  = "#9c9385",  /* black   */
  [9]  = "#9C604A",  /* red     */
  [10] = "#798574", /* green   */
  [11] = "#F0A215", /* yellow  */
  [12] = "#9C9172", /* blue    */
  [13] = "#DFA365", /* magenta */
  [14] = "#A8A68A", /* cyan    */
  [15] = "#e0d3bf", /* white   */

  /* special colors */
  [256] = "#0d0c0f", /* background */
  [257] = "#e0d3bf", /* foreground */
  [258] = "#e0d3bf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
