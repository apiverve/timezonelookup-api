declare module '@apiverve/timezonelookup' {
  export interface timezonelookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface timezonelookupResponse {
    status: string;
    error: string | null;
    data: TimezoneLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TimezoneLookupData {
      timezone:       null | string;
      timezoneOffset: number | null;
      date:           Date | null;
      time:           null | string;
      time24:         null | string;
      time12:         null | string;
      day:            null | string;
      month:          null | string;
      year:           null | string;
      unix:           null | string;
      dst:            boolean | null;
      dstStart:       Date | null;
      dstEnd:         Date | null;
      dstName:        null | string;
  }

  export default class timezonelookupWrapper {
    constructor(options: timezonelookupOptions);

    execute(callback: (error: any, data: timezonelookupResponse | null) => void): Promise<timezonelookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: timezonelookupResponse | null) => void): Promise<timezonelookupResponse>;
    execute(query?: Record<string, any>): Promise<timezonelookupResponse>;
  }
}
