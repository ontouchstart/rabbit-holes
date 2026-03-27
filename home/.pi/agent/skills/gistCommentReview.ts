// skills/gistCommentReview.ts                                                                                          
  import type { SkillContext, SkillResult } from '@mariozechner/pi-coding-agent';                                         
                                                                                                                          
  /**                                                                                                                     
   * Skill: gistCommentReview                                                                                             
   *                                                                                                                      
   * Parameters                                                                                                           
   * ├─ gistUrl: string  – Full GitHub Gist URL (e.g. https://gist.github.com/…/1234abcd)                                 
   *                                                                                                                      
   * Returns                                                                                                              
   * ├─ text: string  – The raw body of the last comment                                                                  
   * └─ summary: string – A short, human‑readable summary                                                                 
   */                                                                                                                     
  export default async function gistCommentReview(                                                                        
    ctx: SkillContext,                                                                                                    
    gistUrl: string                                                                                                       
  ): Promise<SkillResult> {                                                                                               
    /* ------------------------------------------------------------------ */                                              
    /* 1️⃣ Validate & extract the Gist ID                                 */                                               
    /* ------------------------------------------------------------------ */                                              
    const match = gistUrl.match(/gist\.github\.com\/[^/]+\/([a-f0-9]+)/);                                                 
    if (!match) return { error: 'Invalid Gist URL' };                                                                     
    const gistId = match[1];                                                                                              
                                                                                                                          
    /* ------------------------------------------------------------------ */                                              
    /* 2️⃣ Call the GitHub API                                           */                                                
    /* ------------------------------------------------------------------ */                                              
    const apiEndpoint = `https://api.github.com/gists/${gistId}/comments`;                                                
    const result = await ctx.bash(`curl -s -H "Accept: application/vnd.github.v3+json" ${apiEndpoint}`);                  
                                                                                                                          
    if (result.error) return { error: result.error };                                                                     
                                                                                                                          
    /* ------------------------------------------------------------------ */                                              
    /* 3️⃣ Parse JSON & pick the last comment                            */                                                
    /* ------------------------------------------------------------------ */                                              
    let comments: any[];                                                                                                  
    try {                                                                                                                 
      comments = JSON.parse(result.stdout);                                                                               
    } catch {                                                                                                             
      return { error: 'Failed to parse GitHub response' };                                                                
    }                                                                                                                     
                                                                                                                          
    if (!Array.isArray(comments) || comments.length === 0) {                                                              
      return { error: 'No comments found on this gist' };                                                                 
    }                                                                                                                     
                                                                                                                          
    const lastComment = comments[comments.length - 1];                                                                    
    const body =                                                                                                          
      typeof lastComment.body === 'string' ? lastComment.body : '';                                                       
                                                                                                                          
    /* ------------------------------------------------------------------ */                                              
    /* 4️⃣ Return the comment body and a short summary                    */                                               
    /* ------------------------------------------------------------------ */                                              
    return {                                                                                                              
      text: body,                                                                                                         
      summary: `Fetched ${comments.length} comment(s); last comment (ID ${lastComment.id}) contains ${body.length} characters.`,                              
    };                                                                                                                    
  } 
