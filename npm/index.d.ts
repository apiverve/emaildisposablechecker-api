declare module '@apiverve/emaildisposablechecker' {
  export interface emaildisposablecheckerOptions {
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

  export interface emaildisposablecheckerResponse {
    status: string;
    error: string | null;
    data: DisposableEmailCheckerData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DisposableEmailCheckerData {
      isDisposable: boolean | null;
      email:        null | string;
      domain:       null | string;
  }

  export default class emaildisposablecheckerWrapper {
    constructor(options: emaildisposablecheckerOptions);

    execute(callback: (error: any, data: emaildisposablecheckerResponse | null) => void): Promise<emaildisposablecheckerResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: emaildisposablecheckerResponse | null) => void): Promise<emaildisposablecheckerResponse>;
    execute(query?: Record<string, any>): Promise<emaildisposablecheckerResponse>;
  }
}
