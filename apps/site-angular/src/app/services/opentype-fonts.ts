import { MushafLayoutType } from './qurantext.service';

export const OPENTYPE_FONT_FAMILIES: Record<MushafLayoutType, string> = {
  [MushafLayoutType.NewMadinah]: 'DigitalKhatt New Madina',
  [MushafLayoutType.OldMadinah]: 'DigitalKhatt Old Madina',
  [MushafLayoutType.IndoPak15Lines]: 'DigitalKhatt IndoPak',
};
