(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit NewUserController;

interface

{$MODE OBJFPC}
{$H+}

uses

    fano;

type

    (*!-----------------------------------------------
     * controller that handle route :
     * /newuser
     *
     * See Routes/NewUser/routes.inc
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    TNewUserController = class(TAbstractController)
    public
        function handleRequest(
            const request : IRequest;
            const response : IResponse;
            const args : IRouteArgsReader
        ) : IResponse; override;
    end;

implementation

    function TNewUserController.handleRequest(
        const request : IRequest;
        const response : IResponse;
        const args : IRouteArgsReader
    ) : IResponse;
    begin
        {---put your code here, for example : ---}
        //response.body().write('');
        result := response;
    end;

end.
