(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit UserController;

interface

{$MODE OBJFPC}
{$H+}

uses

    fano;

type

    (*!-----------------------------------------------
     * controller that handle route :
     * /user
     *
     * See Routes/User/routes.inc
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    TUserController = class(TAbstractController)
    public
        function handleRequest(
            const request : IRequest;
            const response : IResponse;
            const args : IRouteArgsReader
        ) : IResponse; override;
    end;

implementation

    function TUserController.handleRequest(
        const request : IRequest;
        const response : IResponse;
        const args : IRouteArgsReader
    ) : IResponse;
    begin
        {---put your code here, for example : ---}
        response.body().write(args['id']);
        result := response;
    end;

end.
